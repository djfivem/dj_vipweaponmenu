NVWM = NVWM or {}

local cache = {}
local inflight = {}
local logged = {}

local function now()
    return os.time()
end

local function logOnce(key, message)
    if logged[key] then return end
    logged[key] = true
    print('[nvwm] ' .. message)
end

local function started(name)
    return GetResourceState(name) == 'started'
end

function NVWM.DiscordSnowflake(src)
    if GetPlayerIdentifierByType then
        local ok, identifier = pcall(GetPlayerIdentifierByType, src, 'discord')
        if ok and type(identifier) == 'string' and identifier ~= '' then
            return identifier:gsub('^discord:', '')
        end
    end
    local count = GetNumPlayerIdentifiers(src) or 0
    for i = 0, count - 1 do
        local identifier = GetPlayerIdentifier(src, i)
        if type(identifier) == 'string' and identifier:sub(1, 8) == 'discord:' then
            return identifier:sub(9)
        end
    end
    return nil
end

local function convar(name)
    if type(name) ~= 'string' or name == '' then return '' end
    local value = GetConvar(name, '')
    if type(value) ~= 'string' then return '' end
    return (value:gsub('^%s+', ''):gsub('%s+$', ''))
end

function NVWM.DiscordSettings()
    local cfg = Config.Discord or {}
    local token = convar(cfg.TokenConvar or 'nvwm_discord_token')
    if token:lower():sub(1, 4) == 'bot ' then
        token = token:sub(5):gsub('^%s+', '')
    end
    local guild = convar(cfg.GuildConvar or 'nvwm_discord_guild')
    if guild == '' then guild = tostring(cfg.GuildId or '') end
    guild = guild:gsub('^%s+', ''):gsub('%s+$', '')
    return {
        provider = cfg.Provider or 'auto',
        token = token,
        guild = guild,
        cacheSeconds = tonumber(cfg.CacheSeconds) or 120,
        errorCacheSeconds = tonumber(cfg.ErrorCacheSeconds) or 20,
    }
end

function NVWM.DiscordNativeReady(settings)
    settings = settings or NVWM.DiscordSettings()
    if settings.token == '' or settings.guild == '' then return false end
    if settings.guild:find('GUILD', 1, true) then return false end
    return true
end

local function remember(src, entry)
    cache[src] = entry
    return entry
end

local function accept(src, roles, provider, ttl)
    if #roles > 100 then
        local trimmed = {}
        for i = 1, 100 do trimmed[i] = roles[i] end
        roles = trimmed
    end
    return remember(src, {
        ok = true,
        roles = roles,
        provider = provider,
        expires = now() + (ttl or 120),
    })
end

local function reject(src, reason, provider, ttl)
    return remember(src, {
        ok = false,
        roles = {},
        provider = provider or 'none',
        error = reason,
        expires = now() + (ttl or 20),
    })
end

local function badgerName()
    if started('Badger_Discord_API') then return 'Badger_Discord_API' end
    if started('badger_discord_api') then return 'badger_discord_api' end
    return nil
end

local function normalizeRoles(roles)
    local out = {}
    if type(roles) ~= 'table' then return nil end
    for i = 1, #roles do
        out[#out + 1] = tostring(roles[i])
    end
    if #out == 0 then
        for key, value in pairs(roles) do
            if type(value) == 'string' then
                out[#out + 1] = value
            elseif value and type(key) ~= 'number' then
                out[#out + 1] = tostring(key)
            end
        end
    end
    return out
end

local function badgerRoles(src)
    local resource = badgerName()
    if not resource then return nil end
    local ok, roles = pcall(function()
        return exports[resource]:GetDiscordRoles(src)
    end)
    if not ok then return nil end
    return normalizeRoles(roles)
end

local function rolesFromChecks(src, resource, method)
    if not started(resource) then return nil end
    local watched = NVWM.WatchedRoleIds()
    if #watched == 0 then return {} end
    local found, answered = {}, false
    for i = 1, #watched do
        local ok, present = pcall(function()
            return exports[resource][method](src, watched[i])
        end)
        if not ok then
            ok, present = pcall(function()
                local proxy = exports[resource]
                return proxy[method](proxy, src, watched[i])
            end)
        end
        if ok then
            answered = true
            if present == true or present == 1 then
                found[#found + 1] = watched[i]
            end
        end
    end
    if not answered then return nil end
    return found
end

local function providerRoles(src, name)
    if name == 'badger' then return badgerRoles(src) end
    if name == 'zdiscord' then return rolesFromChecks(src, 'zdiscord', 'isRolePresent') end
    if name == 'discord_perms' then return rolesFromChecks(src, 'discord_perms', 'IsRolePresent') end
    return nil
end

local function finish(src, entry)
    local waiters = inflight[src]
    inflight[src] = nil
    if not waiters then return end
    for i = 1, #waiters do
        waiters[i](entry)
    end
end

local function fetchNative(src, settings, done)
    local snowflake = NVWM.DiscordSnowflake(src)
    if not snowflake then
        done(reject(src, 'no_discord', 'native', settings.cacheSeconds))
        return
    end
    local url = ('https://discord.com/api/v10/guilds/%s/members/%s'):format(settings.guild, snowflake)
    PerformHttpRequest(url, function(code, body)
        code = tonumber(code) or 0
        if not GetPlayerName(src) then
            done(reject(src, 'discord_down', 'native', 5))
            return
        end
        if code == 200 and type(body) == 'string' and body ~= '' then
            local ok, data = pcall(json.decode, body)
            local roles = ok and type(data) == 'table' and normalizeRoles(data.roles) or nil
            if roles then
                done(accept(src, roles, 'native', settings.cacheSeconds))
                return
            end
            logOnce('native_body', 'Discord member lookup returned a body this resource could not read.')
            done(reject(src, 'discord_down', 'native', settings.errorCacheSeconds))
            return
        end
        if code == 404 then
            done(reject(src, 'not_in_guild', 'native', settings.cacheSeconds))
            return
        end
        if code == 401 then
            logOnce('native_401', 'Discord returned 401. nvwm_discord_token is missing or invalid.')
            done(reject(src, 'discord_down', 'native', 60))
            return
        end
        if code == 403 then
            logOnce('native_403', 'Discord returned 403. Turn on the Server Members Intent and invite the bot to the guild.')
            done(reject(src, 'discord_down', 'native', 60))
            return
        end
        if code == 429 then
            local stale = cache[src]
            if stale and stale.ok then
                done(stale)
                return
            end
            logOnce('native_429', 'Discord rate limited role lookups. Cached results slow this down.')
            done(reject(src, 'discord_down', 'native', settings.errorCacheSeconds))
            return
        end
        logOnce('native_http_' .. tostring(code), ('Discord role lookup failed with HTTP %s.'):format(code))
        done(reject(src, 'discord_down', 'native', settings.errorCacheSeconds))
    end, 'GET', '', {
        ['Authorization'] = 'Bot ' .. settings.token,
        ['Content-Type'] = 'application/json',
        ['User-Agent'] = 'NoVacancyArmory (FiveM)',
    })
end

function NVWM.ClearRoleCache(src)
    if src then
        cache[src] = nil
        return
    end
    cache = {}
end

function NVWM.GetRoles(src, done)
    local settings = NVWM.DiscordSettings()
    local hit = cache[src]
    if hit and hit.expires > now() then
        done(hit)
        return
    end

    if settings.provider == 'ace' then
        done(accept(src, {}, 'ace', 30))
        return
    end

    local order
    if settings.provider == 'auto' then
        order = { 'badger', 'zdiscord', 'discord_perms', 'native' }
    else
        order = { settings.provider }
    end

    for i = 1, #order do
        local name = order[i]
        if name == 'native' then
            if NVWM.DiscordNativeReady(settings) then
                local bucket = inflight[src]
                if bucket then
                    bucket[#bucket + 1] = done
                    return
                end
                inflight[src] = { done }
                fetchNative(src, settings, function(entry)
                    finish(src, entry)
                end)
                return
            end
            if settings.provider == 'native' then
                done(reject(src, 'unconfigured', 'native', settings.errorCacheSeconds))
                return
            end
        else
            local roles = providerRoles(src, name)
            if roles then
                if Config.Debug then
                    print(('[nvwm] %s roles via %s: %s'):format(src, name, #roles))
                end
                done(accept(src, roles, name, settings.cacheSeconds))
                return
            end
            if settings.provider == name then
                done(reject(src, 'not_ready', name, settings.errorCacheSeconds))
                return
            end
        end
    end

    done(reject(src, 'unconfigured', 'none', settings.errorCacheSeconds))
end
