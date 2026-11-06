local lastGive = {}
local lastItem = {}
local grantCount = {}
local granting = {}
local announced = false

local TEXT = {
    no_discord = 'noDiscord',
    not_in_guild = 'notInGuild',
    no_role = 'noRole',
    unconfigured = 'unconfigured',
    discord_down = 'discordDown',
    not_ready = 'notReady',
    cooldown = 'cooldown',
    already_have = 'alreadyHave',
    inventory_full = 'inventoryFull',
    not_allowed = 'notAllowed',
    granted = 'granted',
    granted_no_ammo = 'grantedNoAmmo',
    equipped = 'equipped',
    failed = 'failed',
    add_failed = 'failed',
    inventory_unavailable = 'failed',
    limit = 'limit',
    no_permission = 'noPermission',
    refreshed = 'refreshed',
}

local function text(code)
    local key = TEXT[code] or 'failed'
    local messages = Config.Text or {}
    return messages[key] or key
end

local function online(src)
    return GetPlayerName(src) ~= nil
end

local function ace(src)
    return IsPlayerAceAllowed(src, Config.AcePermission or 'nvwm.armory')
end

local function imageTemplate()
    local images = Config.Images
    if type(images) ~= 'table' or images.enabled == false then return false end
    if type(images.template) ~= 'string' or images.template == '' then return false end
    return images.template
end

local function deny(src, reason)
    if not online(src) then return end
    TriggerClientEvent('nvwm:openResult', src, {
        action = 'denied',
        reason = reason,
        message = text(reason),
    })
end

local function payloadFor(src, access, clientHash)
    local hash = NVWM.AccessHash(access.weapons)
    local payload = {
        action = 'open',
        hash = hash,
        roles = access.labels,
        player = NVWM.PlayerName(src),
        categories = NVWM.CategoryCounts(access.weapons),
        image = imageTemplate(),
    }
    if tonumber(clientHash) == hash then
        payload.reuse = true
    else
        payload.weapons = NVWM.PackWeapons(access.weapons)
    end
    return payload
end

local function openFor(src, clientHash)
    if not online(src) then return end
    local allowed = ace(src)
    NVWM.GetRoles(src, function(entry)
        if not online(src) then return end
        if not entry.ok and not allowed then
            deny(src, entry.error or 'discord_down')
            return
        end
        local access = NVWM.ResolveAccess(entry.ok and entry.roles or {}, allowed)
        if #access.weapons == 0 then
            if access.configured == 0 and not allowed then
                deny(src, 'unconfigured')
            else
                deny(src, 'no_role')
            end
            return
        end
        TriggerClientEvent('nvwm:openResult', src, payloadFor(src, access, clientHash))
    end)
end

local function cooldownLeft(src)
    local cooldown = tonumber(Config.GiveCooldown) or 0
    if cooldown <= 0 then return 0 end
    local last = lastGive[src]
    if not last then return 0 end
    local left = cooldown - (os.time() - last)
    if left < 0 then return 0 end
    return left
end

local function giveWeapon(src, weapon)
    local inventory = NVWM.InventoryName()
    local item = NVWM.ResolveItem(weapon, inventory)
    if not Config.AllowDuplicates and NVWM.ItemCount(src, item) >= 1 then
        return false, 'already_have'
    end
    local cap = tonumber(Config.MaxGrants) or 0
    if cap > 0 and (grantCount[src] or 0) >= cap then
        return false, 'limit'
    end
    if Config.ReplacePrevious and lastItem[src] and lastItem[src] ~= item then
        NVWM.RemoveItem(src, lastItem[src], 1)
    end

    local metadata = weapon.ammo and NVWM.WeaponMetadata(Config.AmmoCount, inventory) or nil
    local ok, err = NVWM.AddItem(src, item, 1, metadata, weapon)
    if not ok then
        if err == 'add_failed' or err == 'inventory_unavailable' then
            print(('[nvwm] Could not give %s to %s (%s): %s'):format(item, NVWM.PlayerName(src), src, err))
        end
        return false, err or 'failed'
    end

    local ammoMissing = false
    local skipAmmoItem = inventory == 'standalone' or inventory == 'esx'
    if Config.GiveAmmo and weapon.ammo and not skipAmmoItem then
        local ammoItem = NVWM.AmmoItemName(weapon.ammo, inventory)
        local amount = tonumber(Config.AmmoCount) or 0
        if ammoItem and amount > 0 then
            local ammoOk = NVWM.AddItem(src, ammoItem, amount, nil, nil)
            ammoMissing = not ammoOk
        end
    end

    lastGive[src] = os.time()
    lastItem[src] = item
    grantCount[src] = (grantCount[src] or 0) + 1
    if Config.LogGrants ~= false then
        print(('[nvwm] %s (%s) took %s [%s]'):format(NVWM.PlayerName(src), src, weapon.label, item))
    end
    if inventory == 'standalone' then return true, 'equipped' end
    if ammoMissing then return true, 'granted_no_ammo' end
    return true, 'granted'
end

local function giveFor(src, id)
    if granting[src] then return end
    if type(id) ~= 'string' or #id > 80 or not id:match('^[%w_]+$') then return end
    granting[src] = true
    local allowed = ace(src)
    NVWM.GetRoles(src, function(entry)
        local function finish(ok, reason)
            granting[src] = nil
            if not online(src) then return end
            TriggerClientEvent('nvwm:giveResult', src, {
                action = 'result',
                ok = ok == true,
                message = text(reason),
            })
        end
        if not online(src) then
            granting[src] = nil
            return
        end
        if not entry.ok and not allowed then
            finish(false, entry.error or 'discord_down')
            return
        end
        if cooldownLeft(src) > 0 then
            finish(false, 'cooldown')
            return
        end
        local access = NVWM.ResolveAccess(entry.ok and entry.roles or {}, allowed)
        local weapon = access.byId[id]
        if not weapon then
            finish(false, 'not_allowed')
            return
        end
        local ok, reason = giveWeapon(src, weapon)
        finish(ok, reason)
    end)
end

RegisterNetEvent('nvwm:requestOpen', function(clientHash)
    openFor(source, clientHash)
end)

RegisterNetEvent('nvwm:give', function(id)
    giveFor(source, id)
end)

AddEventHandler('playerDropped', function()
    local src = source
    granting[src] = nil
    lastGive[src] = nil
    lastItem[src] = nil
    grantCount[src] = nil
    NVWM.ClearHold(src)
    NVWM.ClearRoleCache(src)
end)

RegisterCommand('nvwm_refresh', function(src)
    if src ~= 0 and not ace(src) then
        if online(src) then
            TriggerClientEvent('nvwm:notify', src, text('no_permission'), 'error')
        end
        return
    end
    if src == 0 then
        NVWM.ClearRoleCache()
        print('[nvwm] Discord role cache cleared.')
        return
    end
    NVWM.ClearRoleCache(src)
    TriggerClientEvent('nvwm:notify', src, text('refreshed'), 'success')
end, false)

local function discordSummary()
    local settings = NVWM.DiscordSettings()
    if settings.provider == 'native' or settings.provider == 'auto' then
        if NVWM.DiscordNativeReady(settings) then
            return settings.provider .. ' (bot ready)'
        end
    end
    return settings.provider
end

local function announce()
    if announced then return end
    announced = true
    print(('[nvwm] No Vacancy armory ready. Weapons %s. Framework %s. Inventory %s. Discord %s.'):format(
        #(NVWM.List or {}),
        NVWM.Framework(),
        NVWM.InventoryName(),
        discordSummary()
    ))
    if NVWM.ConfiguredRoleCount() == 0 then
        print('[nvwm] Config.Roles still has placeholder ids. Replace them with real Discord role ids. Ace nvwm.armory can still open the armory.')
    end
    local settings = NVWM.DiscordSettings()
    if (settings.provider == 'auto' or settings.provider == 'native') and not NVWM.DiscordNativeReady(settings) then
        local hasBridge = GetResourceState('Badger_Discord_API') == 'started'
            or GetResourceState('badger_discord_api') == 'started'
            or GetResourceState('zdiscord') == 'started'
            or GetResourceState('discord_perms') == 'started'
        if settings.provider == 'native' or not hasBridge then
            print('[nvwm] Built-in Discord lookup is not configured. Set nvwm_discord_token and nvwm_discord_guild, or start Badger_Discord_API, zdiscord, or discord_perms.')
        end
    end
end

CreateThread(function()
    Wait(1000)
    announce()
end)
