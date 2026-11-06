NVWM = NVWM or {}

NVWM.Categories = {
    { id = 'pistols', label = 'Pistols' },
    { id = 'heavy_pistols', label = 'Heavy Pistols' },
    { id = 'smgs', label = 'SMGs' },
    { id = 'shotguns', label = 'Shotguns' },
    { id = 'rifles', label = 'Rifles' },
    { id = 'assault_rifles', label = 'Assault Rifles' },
    { id = 'snipers', label = 'Snipers' },
    { id = 'melee', label = 'Melee' },
    { id = 'custom', label = 'Custom' },
    { id = 'variants', label = 'Variants' },
}

NVWM.AmmoLabels = {
    ['ammo-9'] = '9mm',
    ['ammo-44'] = '.44',
    ['ammo-rifle'] = 'Rifle',
    ['ammo-shotgun'] = '12 Gauge',
    ['ammo-sniper'] = 'Sniper',
}

function NVWM.AmmoLabel(ammo)
    if type(ammo) ~= 'string' or ammo == '' then return nil end
    return NVWM.AmmoLabels[ammo] or ammo
end

local function disabled(item)
    local map = Config and Config.DisabledWeapons
    if type(map) ~= 'table' then return false end
    return map[item] == true or map[item:lower()] == true
end

local function addEntry(list, byId, byItem, entry)
    if type(entry) ~= 'table' then return end
    local item = entry.item
    local id = entry.id
    if type(item) ~= 'string' or item == '' or type(id) ~= 'string' or id == '' then return end
    if disabled(item) then return end
    local key = item:lower()
    if byItem[key] or byId[id] then return end
    local ammo = entry.ammo
    if ammo == '' then ammo = nil end
    local row = {
        id = id,
        item = item,
        label = (type(entry.label) == 'string' and entry.label ~= '' and entry.label) or item,
        category = entry.category or 'custom',
        family = entry.family or entry.category or 'custom',
        ammo = ammo,
        ammoLabel = NVWM.AmmoLabel(ammo),
    }
    byItem[key] = row
    byId[id] = row
    list[#list + 1] = row
end

function NVWM.BuildCatalog()
    local list, byId, byItem = {}, {}, {}
    local rows = NVWM.CatalogRows or {}
    for i = 1, #rows do
        local row = rows[i]
        addEntry(list, byId, byItem, {
            id = row[1],
            item = row[2],
            label = row[3],
            category = row[4],
            family = row[5],
            ammo = row[6],
        })
    end

    local extras = Config and Config.ExtraWeapons or {}
    for i = 1, #extras do
        local entry = extras[i]
        if type(entry) == 'table' and type(entry.item) == 'string' then
            addEntry(list, byId, byItem, {
                id = entry.id or ('extra_' .. entry.item:lower()),
                item = entry.item,
                label = entry.label,
                category = entry.category or 'custom',
                family = entry.family or entry.category or 'custom',
                ammo = entry.ammo,
            })
        end
    end

    table.sort(list, function(a, b)
        local left, right = a.label:lower(), b.label:lower()
        if left == right then return a.item < b.item end
        return left < right
    end)

    NVWM.List = list
    NVWM.ById = byId
    NVWM.ByItem = byItem
end

NVWM.BuildCatalog()
