NVWM = NVWM or {}

local esxObject
local held = {}

local function started(name)
    return GetResourceState(name) == 'started'
end

function NVWM.Framework()
    local configured = Config.Framework or 'auto'
    if configured ~= 'auto' then return configured end
    if started('qbx_core') then return 'qbox' end
    if started('qb-core') then return 'qbcore' end
    if started('es_extended') then return 'esx' end
    return 'standalone'
end

function NVWM.InventoryName()
    local configured = Config.Inventory or 'auto'
    if configured ~= 'auto' then return configured end
    local order = {
        'ox_inventory',
        'qb-inventory',
        'ps-inventory',
        'lj-inventory',
        'qs-inventory',
        'codem-inventory',
        'core_inventory',
        'tgiann-inventory',
        'origen_inventory',
    }
    for i = 1, #order do
        if started(order[i]) then return order[i] end
    end
    local framework = NVWM.Framework()
    if framework == 'esx' then return 'esx' end
    if framework == 'qbcore' or framework == 'qbox' then return 'qb-player' end
    return 'standalone'
end

local function esx()
    if esxObject then return esxObject end
    if not started('es_extended') then return nil end
    local ok, object = pcall(function()
        return exports['es_extended']:getSharedObject()
    end)
    if ok and type(object) == 'table' then
        esxObject = object
        return object
    end
    local pending = promise.new()
    local settled = false
    TriggerEvent('esx:getSharedObject', function(object)
        if settled then return end
        settled = true
        pending:resolve(object)
    end)
    SetTimeout(1000, function()
        if settled then return end
        settled = true
        pending:resolve(nil)
    end)
    local awaited = Citizen.Await(pending)
    if type(awaited) == 'table' then esxObject = awaited end
    return esxObject
end

local function xPlayer(src)
    local core = esx()
    if not core or not core.GetPlayerFromId then return nil end
    local ok, player = pcall(function()
        return core.GetPlayerFromId(src)
    end)
    if ok and type(player) == 'table' then return player end
    return nil
end

local function qbPlayer(src)
    if not started('qb-core') then return nil end
    local ok, core = pcall(function()
        return exports['qb-core']:GetCoreObject()
    end)
    if not ok or not core or not core.Functions then return nil end
    local found, player = pcall(function()
        return core.Functions.GetPlayer(src)
    end)
    if found then return player end
    return nil
end

local function qboxPlayer(src)
    if not started('qbx_core') then return nil end
    local ok, player = pcall(function()
        return exports.qbx_core:GetPlayer(src)
    end)
    if ok then return player end
    return nil
end

local function frameworkPlayer(src)
    local framework = NVWM.Framework()
    if framework == 'qbox' then return qboxPlayer(src) end
    if framework == 'qbcore' then return qbPlayer(src) end
    if framework == 'esx' then return xPlayer(src) end
    return nil
end

function NVWM.PlayerName(src)
    local framework = NVWM.Framework()
    if framework == 'qbcore' or framework == 'qbox' then
        local player = frameworkPlayer(src)
        local info = player and player.PlayerData and player.PlayerData.charinfo or {}
        local name = ((info.firstname or '') .. ' ' .. (info.lastname or '')):gsub('^%s+', ''):gsub('%s+$', '')
        if name ~= '' then return name end
    elseif framework == 'esx' then
        local player = xPlayer(src)
        if player and player.getName then
            local ok, name = pcall(function()
                return player.getName()
            end)
            if ok and type(name) == 'string' and name ~= '' then return name end
        end
    end
    return GetPlayerName(src) or 'Player'
end

function NVWM.PlayerIdentifier(src)
    local framework = NVWM.Framework()
    if framework == 'qbcore' or framework == 'qbox' then
        local player = frameworkPlayer(src)
        local citizen = player and player.PlayerData and player.PlayerData.citizenid
        if type(citizen) == 'string' and citizen ~= '' then return citizen end
    elseif framework == 'esx' then
        local player = xPlayer(src)
        if player and type(player.identifier) == 'string' and player.identifier ~= '' then
            return player.identifier
        end
    end
    if GetPlayerIdentifierByType then
        local ok, license = pcall(GetPlayerIdentifierByType, src, 'license')
        if ok and type(license) == 'string' and license ~= '' then return license end
    end
    return GetPlayerIdentifier(src, 0)
end

function NVWM.ResolveItem(weapon, inventory)
    local item = weapon.item
    local maps = Config.ItemOverrides or {}
    local map = maps[inventory or NVWM.InventoryName()]
    if type(map) == 'table' then
        local override = map[weapon.id] or map[item]
        if type(override) == 'string' and override ~= '' then return override end
    end
    return item
end

function NVWM.AmmoItemName(oxName, inventory)
    if type(oxName) ~= 'string' or oxName == '' then return nil end
    inventory = inventory or NVWM.InventoryName()
    local row = Config.Ammo and Config.Ammo[oxName]
    if inventory == 'ox_inventory' or inventory == 'core_inventory' then
        return (type(row) == 'table' and row.ox) or oxName
    end
    if inventory == 'esx' or inventory == 'custom' then
        if type(row) == 'table' then return row.esx or row.custom or row.ox or oxName end
        return oxName
    end
    if inventory == 'standalone' then return nil end
    if type(row) == 'table' then return row.qb or row.ox end
    return nil
end

function NVWM.WeaponMetadata(ammoCount, inventory)
    inventory = inventory or NVWM.InventoryName()
    ammoCount = tonumber(ammoCount) or 0
    if ammoCount <= 0 then return nil end
    if inventory == 'ox_inventory' or inventory == 'core_inventory' then
        if Config.OxMetadataAmmo then return { ammo = ammoCount, durability = 100 } end
        return nil
    end
    if Config.PassAmmoMetadata == false then return nil end
    if inventory == 'esx' or inventory == 'standalone' or inventory == 'custom' then return nil end
    return { ammo = ammoCount }
end

local function asCount(ok, result)
    if not ok or result == nil or result == false then return 0 end
    if type(result) == 'number' then return result end
    if type(result) == 'table' then
        return tonumber(result.amount or result.count or result.quantity) or 0
    end
    return 0
end

local function succeeded(ok, result)
    if not ok then return false end
    if result == false then return false end
    return true
end

local function customCall(method, ...)
    local custom = Config.CustomInventory or {}
    local fn = custom[method]
    if type(fn) ~= 'function' then return false, nil end
    local ok, result = pcall(fn, ...)
    return ok, result
end

function NVWM.ClearHold(src)
    held[src] = nil
end

local function holdCount(src, item)
    local pocket = held[src]
    if not pocket then return 0 end
    return pocket[item] or 0
end

local function holdAdd(src, item, count)
    held[src] = held[src] or {}
    held[src][item] = (held[src][item] or 0) + count
end

local function qbStyleCount(resource, src, item)
    local ok, result = pcall(function()
        return exports[resource]:GetItemByName(src, item)
    end)
    return asCount(ok, result)
end

local function qbStyleAdd(resource, src, item, count, metadata)
    local ok, result = pcall(function()
        return exports[resource]:AddItem(src, item, count, false, metadata, 'nvwm')
    end)
    if ok then return result ~= false end
    local player = qbPlayer(src) or qboxPlayer(src)
    if player and player.Functions and player.Functions.AddItem then
        local added, value = pcall(function()
            return player.Functions.AddItem(item, count, false, metadata)
        end)
        return added and value ~= false
    end
    return false
end

local function qbStyleRemove(resource, src, item, count)
    local ok, result = pcall(function()
        return exports[resource]:RemoveItem(src, item, count, false, 'nvwm')
    end)
    if ok then return result ~= false end
    local player = qbPlayer(src) or qboxPlayer(src)
    if player and player.Functions and player.Functions.RemoveItem then
        local removed, value = pcall(function()
            return player.Functions.RemoveItem(item, count)
        end)
        return removed and value ~= false
    end
    return false
end

function NVWM.ItemCount(src, item)
    local inventory = NVWM.InventoryName()
    if inventory == 'custom' then
        local ok, result = customCall('Count', src, item)
        return asCount(ok, result)
    end
    if inventory == 'standalone' then return holdCount(src, item) end
    if inventory == 'ox_inventory' then
        local ok, result = pcall(function()
            return exports.ox_inventory:GetItemCount(src, item)
        end)
        return asCount(ok, result)
    end
    if inventory == 'qb-inventory' or inventory == 'ps-inventory' or inventory == 'lj-inventory' then
        return qbStyleCount(inventory, src, item)
    end
    if inventory == 'qs-inventory' then
        local ok, result = pcall(function()
            return exports['qs-inventory']:GetItemTotalAmount(src, item)
        end)
        if ok and type(result) == 'number' then return result end
        return qbStyleCount('qs-inventory', src, item)
    end
    if inventory == 'codem-inventory' then
        local ok, result = pcall(function()
            return exports['codem-inventory']:GetItemByName(src, item)
        end)
        return asCount(ok, result)
    end
    if inventory == 'tgiann-inventory' then
        local ok, result = pcall(function()
            return exports['tgiann-inventory']:GetItemByName(src, item)
        end)
        return asCount(ok, result)
    end
    if inventory == 'origen_inventory' then
        local ok, result = pcall(function()
            return exports['origen_inventory']:getItemCount(src, item)
        end)
        if not ok then
            ok, result = pcall(function()
                return exports['origen_inventory']:GetItemByName(src, item)
            end)
        end
        return asCount(ok, result)
    end
    if inventory == 'core_inventory' then
        local identifier = NVWM.PlayerIdentifier(src)
        local targets = {}
        if identifier then targets[#targets + 1] = 'content-' .. identifier end
        targets[#targets + 1] = src
        for i = 1, #targets do
            local ok, result = pcall(function()
                return exports['core_inventory']:getItemCount(targets[i], item)
            end)
            if ok and type(result) == 'number' then return result end
        end
        return 0
    end
    if inventory == 'esx' then
        local player = xPlayer(src)
        if not player then return 0 end
        if player.getLoadout then
            local ok, loadout = pcall(function() return player.getLoadout() end)
            if ok and type(loadout) == 'table' then
                for i = 1, #loadout do
                    local name = loadout[i] and loadout[i].name
                    if type(name) == 'string' and name:lower() == item:lower() then return 1 end
                end
            end
        end
        if player.getInventoryItem then
            local ok, entry = pcall(function() return player.getInventoryItem(item) end)
            if ok and type(entry) == 'table' then return tonumber(entry.count) or 0 end
        end
        return 0
    end
    if inventory == 'qb-player' then
        local player = frameworkPlayer(src)
        if not player or not player.Functions or not player.Functions.GetItemByName then return 0 end
        local ok, result = pcall(function()
            return player.Functions.GetItemByName(item)
        end)
        return asCount(ok, result)
    end
    return 0
end

local function canCarry(src, item, count, inventory)
    if inventory == 'ox_inventory' then
        local ok, result = pcall(function()
            return exports.ox_inventory:CanCarryItem(src, item, count)
        end)
        if not ok or result == nil then return true end
        return result == true
    end
    if inventory == 'qb-inventory' or inventory == 'ps-inventory' or inventory == 'lj-inventory' then
        local ok, result = pcall(function()
            return exports[inventory]:CanAddItem(src, item, count)
        end)
        if not ok or result == nil then return true end
        return result == true
    end
    if inventory == 'qs-inventory' or inventory == 'codem-inventory' then
        local ok, result = pcall(function()
            return exports[inventory]:CanCarryItem(src, item, count)
        end)
        if not ok or result == nil then return true end
        return result == true
    end
    return true
end

function NVWM.AddItem(src, item, count, metadata, weapon)
    count = tonumber(count) or 1
    local inventory = NVWM.InventoryName()
    if inventory ~= 'standalone' and inventory ~= 'esx' and not canCarry(src, item, count, inventory) then
        return false, 'inventory_full'
    end

    if inventory == 'custom' then
        local ok, result = customCall('Add', src, item, count, metadata)
        if succeeded(ok, result) then return true end
        return false, 'add_failed'
    end

    if inventory == 'standalone' then
        if weapon then
            local ammo = weapon.ammo and (tonumber(Config.NativeAmmo) or tonumber(Config.AmmoCount) or 120) or 1
            TriggerClientEvent('nvwm:equip', src, item, ammo)
            holdAdd(src, item, count)
        end
        return true
    end

    if inventory == 'ox_inventory' then
        local ok, result = pcall(function()
            return exports.ox_inventory:AddItem(src, item, count, metadata)
        end)
        if succeeded(ok, result) and result ~= nil then return true end
        return false, 'inventory_full'
    end

    if inventory == 'qb-inventory' or inventory == 'ps-inventory' or inventory == 'lj-inventory' then
        if qbStyleAdd(inventory, src, item, count, metadata) then return true end
        return false, 'inventory_full'
    end

    if inventory == 'qs-inventory' then
        local ok, result = pcall(function()
            return exports['qs-inventory']:AddItem(src, item, count, nil, metadata)
        end)
        if succeeded(ok, result) and result ~= nil then return true end
        return false, 'inventory_full'
    end

    if inventory == 'codem-inventory' then
        local ok, result = pcall(function()
            return exports['codem-inventory']:AddItem(src, item, count, nil, metadata)
        end)
        if not ok then
            ok, result = pcall(function()
                return exports['codem-inventory']:AddItem(src, item, count, metadata)
            end)
        end
        if succeeded(ok, result) and result ~= nil then return true end
        return false, 'inventory_full'
    end

    if inventory == 'tgiann-inventory' then
        local ok, result = pcall(function()
            return exports['tgiann-inventory']:AddItem(src, item, count, nil, metadata)
        end)
        if succeeded(ok, result) and result ~= nil then return true end
        return false, 'inventory_full'
    end

    if inventory == 'origen_inventory' then
        local ok, result = pcall(function()
            return exports['origen_inventory']:AddItem(src, item, count, nil, metadata)
        end)
        if not ok then
            ok, result = pcall(function()
                return exports['origen_inventory']:addItem(src, item, count, metadata)
            end)
        end
        if succeeded(ok, result) and result ~= nil then return true end
        return false, 'inventory_full'
    end

    if inventory == 'core_inventory' then
        local identifier = NVWM.PlayerIdentifier(src)
        local targets = {}
        if identifier then targets[#targets + 1] = 'content-' .. identifier end
        targets[#targets + 1] = src
        for i = 1, #targets do
            local ok, result = pcall(function()
                return exports['core_inventory']:addItem(targets[i], item, count, metadata)
            end)
            if not ok then
                ok, result = pcall(function()
                    return exports['core_inventory']:AddItem(targets[i], item, count, metadata)
                end)
            end
            if ok and result ~= false and result ~= nil then return true end
        end
        return false, 'inventory_full'
    end

    if inventory == 'esx' then
        local player = xPlayer(src)
        if not player then return false, 'add_failed' end
        if weapon and item:sub(1, 7):upper() == 'WEAPON_' and player.addWeapon then
            local ammo = weapon.ammo and (tonumber(Config.NativeAmmo) or 120) or 1
            local ok = pcall(function()
                player.addWeapon(item, ammo)
            end)
            if ok then return true end
        end
        if player.addInventoryItem then
            local ok = pcall(function()
                player.addInventoryItem(item, count)
            end)
            if ok then return true end
        end
        return false, 'add_failed'
    end

    if inventory == 'qb-player' then
        local player = frameworkPlayer(src)
        if player and player.Functions and player.Functions.AddItem then
            local ok, result = pcall(function()
                return player.Functions.AddItem(item, count, false, metadata)
            end)
            if succeeded(ok, result) then return true end
        end
        return false, 'inventory_full'
    end

    return false, 'inventory_unavailable'
end

function NVWM.RemoveItem(src, item, count)
    count = tonumber(count) or 1
    local inventory = NVWM.InventoryName()
    if inventory == 'custom' then
        local ok, result = customCall('Remove', src, item, count)
        return succeeded(ok, result)
    end
    if inventory == 'standalone' then
        if held[src] then held[src][item] = 0 end
        TriggerClientEvent('nvwm:unequip', src, item)
        return true
    end
    if inventory == 'ox_inventory' then
        local ok, result = pcall(function()
            return exports.ox_inventory:RemoveItem(src, item, count)
        end)
        return succeeded(ok, result) and result ~= nil
    end
    if inventory == 'qb-inventory' or inventory == 'ps-inventory' or inventory == 'lj-inventory' then
        return qbStyleRemove(inventory, src, item, count)
    end
    if inventory == 'qs-inventory' then
        local ok, result = pcall(function()
            return exports['qs-inventory']:RemoveItem(src, item, count)
        end)
        return succeeded(ok, result)
    end
    if inventory == 'codem-inventory' then
        local ok, result = pcall(function()
            return exports['codem-inventory']:RemoveItem(src, item, count)
        end)
        return succeeded(ok, result)
    end
    if inventory == 'tgiann-inventory' then
        local ok, result = pcall(function()
            return exports['tgiann-inventory']:RemoveItem(src, item, count)
        end)
        return succeeded(ok, result)
    end
    if inventory == 'origen_inventory' then
        local ok, result = pcall(function()
            return exports['origen_inventory']:RemoveItem(src, item, count)
        end)
        if not ok then
            ok, result = pcall(function()
                return exports['origen_inventory']:removeItem(src, item, count)
            end)
        end
        return succeeded(ok, result)
    end
    if inventory == 'core_inventory' then
        local identifier = NVWM.PlayerIdentifier(src)
        local target = identifier and ('content-' .. identifier) or src
        local ok, result = pcall(function()
            return exports['core_inventory']:removeItem(target, item, count)
        end)
        return succeeded(ok, result)
    end
    if inventory == 'esx' then
        local player = xPlayer(src)
        if not player then return false end
        if player.removeWeapon then
            local ok = pcall(function() player.removeWeapon(item) end)
            if ok then return true end
        end
        if player.removeInventoryItem then
            local ok = pcall(function() player.removeInventoryItem(item, count) end)
            return ok
        end
        return false
    end
    if inventory == 'qb-player' then
        local player = frameworkPlayer(src)
        if not player or not player.Functions or not player.Functions.RemoveItem then return false end
        local ok, result = pcall(function()
            return player.Functions.RemoveItem(item, count)
        end)
        return succeeded(ok, result)
    end
    return false
end
