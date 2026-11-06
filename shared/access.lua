NVWM = NVWM or {}

function NVWM.IsPlaceholderRole(id)
    if type(id) ~= 'string' or id == '' then return true end
    if id:find('ROLE_ID', 1, true) then return true end
    if id:match('^0+$') then return true end
    if #id >= 15 and id:match('^0+%d$') then return true end
    return false
end

local function eachGrant(list, fn)
    if type(list) ~= 'table' then return end
    if list[1] ~= nil then
        for i = 1, #list do fn(list[i]) end
        return
    end
    for key, value in pairs(list) do
        if value == true then fn(key) else fn(value) end
    end
end

local function configuredRoles()
    local out = {}
    local roles = Config and Config.Roles or {}
    for id, rule in pairs(roles) do
        if type(rule) == 'table' and not NVWM.IsPlaceholderRole(tostring(id)) then
            out[#out + 1] = { id = tostring(id), rule = rule }
        end
    end
    table.sort(out, function(a, b) return a.id < b.id end)
    return out
end

function NVWM.ConfiguredRoleCount()
    return #configuredRoles()
end

function NVWM.WatchedRoleIds()
    local seen, list = {}, {}
    local function add(id)
        id = tostring(id or '')
        if NVWM.IsPlaceholderRole(id) or seen[id] then return end
        seen[id] = true
        list[#list + 1] = id
    end
    for id in pairs((Config and Config.Roles) or {}) do add(id) end
    for _, locks in pairs((Config and Config.WeaponRoles) or {}) do
        eachGrant(locks, add)
    end
    return list
end

local function ownedSet(roleIds)
    local owned = {}
    if type(roleIds) ~= 'table' then return owned end
    for i = 1, #roleIds do
        owned[tostring(roleIds[i])] = true
    end
    return owned
end

local function locked(weapon, owned, ace)
    local locks = Config and Config.WeaponRoles and Config.WeaponRoles[weapon.item]
    if type(locks) ~= 'table' then return false end
    if ace and Config.AceUnlocksAll ~= false then return false end
    local open = false
    eachGrant(locks, function(id)
        id = tostring(id)
        if not NVWM.IsPlaceholderRole(id) and owned[id] then open = true end
    end)
    return not open
end

function NVWM.ResolveAccess(roleIds, ace)
    local owned = ownedSet(roleIds)
    local labels, categories, items = {}, {}, {}
    local all = ace == true and Config.AceUnlocksAll ~= false
    local configured = configuredRoles()

    for i = 1, #configured do
        local entry = configured[i]
        if owned[entry.id] then
            local rule = entry.rule
            if type(rule.label) == 'string' and rule.label ~= '' then
                labels[#labels + 1] = rule.label
            end
            if rule.categories == '*' then
                all = true
            else
                eachGrant(rule.categories, function(category)
                    if type(category) == 'string' and category ~= '' then
                        categories[category] = true
                    end
                end)
            end
            eachGrant(rule.weapons, function(item)
                if type(item) == 'string' and item ~= '' then
                    items[item:lower()] = true
                end
            end)
        end
    end

    local weapons, byId = {}, {}
    local list = NVWM.List or {}
    for i = 1, #list do
        local weapon = list[i]
        if not locked(weapon, owned, ace == true) then
            local allowed = all or items[weapon.item:lower()] or categories[weapon.category] or categories[weapon.family]
            if allowed then
                weapons[#weapons + 1] = weapon
                byId[weapon.id] = weapon
            end
        end
    end

    return {
        weapons = weapons,
        byId = byId,
        labels = labels,
        configured = #configured,
        all = all,
    }
end

function NVWM.CategoryCounts(weapons)
    local counts = {}
    for i = 1, #weapons do
        local category = weapons[i].category or 'custom'
        counts[category] = (counts[category] or 0) + 1
    end

    local labels = {}
    for i = 1, #NVWM.Categories do
        labels[NVWM.Categories[i].id] = NVWM.Categories[i].label
    end

    local out, seen = {}, {}
    for i = 1, #NVWM.Categories do
        local id = NVWM.Categories[i].id
        local count = counts[id]
        if count and count > 0 then
            out[#out + 1] = { id = id, label = labels[id], count = count }
            seen[id] = true
        end
    end
    local extra = {}
    for id, count in pairs(counts) do
        if not seen[id] then extra[#extra + 1] = id end
    end
    table.sort(extra)
    for i = 1, #extra do
        local id = extra[i]
        out[#out + 1] = { id = id, label = labels[id] or id, count = counts[id] }
    end
    return out
end

function NVWM.AccessHash(weapons)
    local hash = 2166136261 % 2147483647
    for i = 1, #weapons do
        local id = weapons[i].id or ''
        for j = 1, #id do
            hash = (hash * 33 + id:byte(j)) % 2147483647
        end
        hash = (hash * 33 + 124) % 2147483647
    end
    if hash == 0 then hash = 1 end
    return hash
end

function NVWM.PackWeapons(weapons)
    local packed = {}
    for i = 1, #weapons do
        local weapon = weapons[i]
        packed[i] = {
            id = weapon.id,
            label = weapon.label,
            item = weapon.item,
            category = weapon.category,
            ammo = weapon.ammoLabel or 'Melee',
        }
    end
    return packed
end
