local open = false
local pending = false
local watching = false
local retried = false
local requestId = 0
local cache = { hash = nil, weapons = nil }

local function text(key)
    local messages = Config.Text or {}
    return messages[key] or key
end

local function notifyKind()
    local configured = Config.Notify or 'auto'
    if configured ~= 'auto' then return configured end
    if GetResourceState('ox_lib') == 'started' then return 'ox_lib' end
    if GetResourceState('qbx_core') == 'started' or GetResourceState('qb-core') == 'started' then return 'qb' end
    if GetResourceState('es_extended') == 'started' then return 'esx' end
    return 'native'
end

local function notify(message, kind)
    if type(message) ~= 'string' or message == '' then return end
    kind = kind or 'inform'
    local mode = notifyKind()
    if mode == 'ox_lib' then
        local ok = pcall(function()
            exports.ox_lib:notify({
                title = 'No Vacancy',
                description = message,
                type = kind == 'info' and 'inform' or kind,
            })
        end)
        if ok then return end
    elseif mode == 'qb' then
        local ok = pcall(function()
            TriggerEvent('QBCore:Notify', message, kind == 'success' and 'success' or 'error')
        end)
        if ok then return end
    elseif mode == 'esx' then
        local ok = pcall(function()
            TriggerEvent('esx:showNotification', message)
        end)
        if ok then return end
    end
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(false, false)
end

local function closeMenu()
    if not open then return end
    open = false
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'close' })
end

local function watchControls()
    if watching then return end
    watching = true
    CreateThread(function()
        while open do
            DisableControlAction(0, 200, true)
            DisableControlAction(0, 322, true)
            if IsDisabledControlJustReleased(0, 200) or IsDisabledControlJustReleased(0, 322) then
                closeMenu()
            end
            Wait(0)
        end
        watching = false
    end)
end

local function showMenu(payload)
    open = true
    pending = false
    SetNuiFocus(true, true)
    SendNUIMessage(payload)
    watchControls()
end

local function requestOpen()
    if open or pending then return end
    if Config.BlockWhenDead then
        local ped = PlayerPedId()
        if IsEntityDead(ped) or IsPedFatallyInjured(ped) then
            notify(text('dead'), 'error')
            return
        end
    end
    requestId = requestId + 1
    local ticket = requestId
    pending = true
    TriggerServerEvent('nvwm:requestOpen', cache.hash)
    SetTimeout(8000, function()
        if pending and ticket == requestId then
            pending = false
            notify(text('timeout'), 'error')
        end
    end)
end

RegisterNetEvent('nvwm:openResult', function(payload)
    pending = false
    if type(payload) ~= 'table' then return end
    if payload.action == 'denied' then
        notify(payload.message or text('noRole'), 'error')
        return
    end
    if payload.action ~= 'open' then return end
    if payload.reuse then
        if not cache.weapons then
            if not retried then
                retried = true
                pending = true
                TriggerServerEvent('nvwm:requestOpen')
            end
            return
        end
        payload.weapons = cache.weapons
    else
        cache.weapons = payload.weapons
        cache.hash = payload.hash
        retried = false
    end
    showMenu(payload)
end)

RegisterNetEvent('nvwm:giveResult', function(payload)
    if type(payload) ~= 'table' then return end
    if open then SendNUIMessage(payload) end
    if payload.message then
        notify(payload.message, payload.ok and 'success' or 'error')
    end
end)

RegisterNetEvent('nvwm:notify', function(message, kind)
    notify(message, kind)
end)

RegisterNetEvent('nvwm:equip', function(item, ammo)
    if type(item) ~= 'string' then return end
    local ped = PlayerPedId()
    local hash = joaat(item)
    local rounds = tonumber(ammo) or 0
    GiveWeaponToPed(ped, hash, rounds, false, true)
    SetCurrentPedWeapon(ped, hash, true)
end)

RegisterNetEvent('nvwm:unequip', function(item)
    if type(item) ~= 'string' then return end
    RemoveWeaponFromPed(PlayerPedId(), joaat(item))
end)

RegisterNUICallback('close', function(_, cb)
    closeMenu()
    cb({ ok = true })
end)

RegisterNUICallback('give', function(data, cb)
    cb({ ok = true })
    if type(data) == 'string' then
        local ok, decoded = pcall(json.decode, data)
        data = ok and decoded or nil
    end
    if type(data) ~= 'table' or type(data.id) ~= 'string' then return end
    TriggerServerEvent('nvwm:give', data.id)
end)

RegisterCommand(Config.Command or 'nvarmory', function()
    requestOpen()
end, false)

RegisterKeyMapping(Config.Command or 'nvarmory', 'Open the No Vacancy armory', 'keyboard', Config.DefaultKey or 'F7')

AddEventHandler('onResourceStop', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    if open then
        open = false
        SetNuiFocus(false, false)
    end
end)
