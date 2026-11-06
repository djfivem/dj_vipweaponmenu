local root = arg[0]:match('^(.*)/tests/run%.lua$') or '.'
local function load(path)
    local chunk, err = loadfile(root .. '/' .. path)
    if not chunk then
        io.stderr:write(err .. '\n')
        os.exit(1)
    end
    chunk()
end

load('config.lua')
load('shared/catalog_data.lua')
load('shared/catalog.lua')
load('shared/access.lua')

local failures = 0
local function check(name, got, expect)
    if got ~= expect then
        failures = failures + 1
        print('FAIL', name, tostring(got), tostring(expect))
    end
end

local initial = #NVWM.List
check('catalog', initial > 700, true)
check('source rows', NVWM.CatalogSourceCount, #NVWM.CatalogRows)
check('indexed', NVWM.ById[NVWM.List[1].id] == NVWM.List[1], true)

local seen = {}
for i = 1, #NVWM.List do
    local key = NVWM.List[i].item:lower()
    if seen[key] then
        check('duplicate ' .. key, true, false)
        break
    end
    seen[key] = true
end

NVWM.CatalogRows[#NVWM.CatalogRows + 1] = {
    'dup_id', NVWM.List[1].item, 'Dup', 'pistols', 'pistols', 'ammo-9',
}
NVWM.BuildCatalog()
check('dedupe', #NVWM.List, initial)
table.remove(NVWM.CatalogRows)

local placeholder = NVWM.ResolveAccess({ '000000000000000001' }, false)
check('placeholder weapons', #placeholder.weapons, 0)
check('placeholder configured', placeholder.configured, 0)
check('placeholder helper', NVWM.IsPlaceholderRole('000000000000000001'), true)
check('real helper', NVWM.IsPlaceholderRole('123456789012345678'), false)

Config.Roles['123456789012345678'] = { label = 'Pistol', categories = { 'pistols' } }
local pistols = NVWM.ResolveAccess({ '123456789012345678' }, false)
local pistolCount, variantCount, other = 0, 0, 0
for i = 1, #pistols.weapons do
    local weapon = pistols.weapons[i]
    if weapon.category ~= 'pistols' and weapon.family ~= 'pistols' then
        other = other + 1
    elseif weapon.category == 'variants' then
        variantCount = variantCount + 1
    else
        pistolCount = pistolCount + 1
    end
end
check('pistol role stays in family', other, 0)
check('pistol role has pistols', pistolCount > 0, true)
check('pistol role has variants', variantCount > 0, true)
check('pistol label', pistols.labels[1], 'Pistol')

Config.Roles['223456789012345678'] = { label = 'All', categories = '*' }
local everything = NVWM.ResolveAccess({ '223456789012345678' }, false)
check('star', #everything.weapons, #NVWM.List)

local ace = NVWM.ResolveAccess({}, true)
check('ace', #ace.weapons, #NVWM.List)

Config.Roles['523456789012345678'] = { label = 'Sniper', categories = { 'snipers' } }
local snipers = NVWM.ResolveAccess({ '523456789012345678' }, false)
local sniperOk = #snipers.weapons > 0
for i = 1, #snipers.weapons do
    local weapon = snipers.weapons[i]
    if weapon.category ~= 'snipers' and weapon.family ~= 'snipers' then sniperOk = false end
end
check('sniper role', sniperOk, true)

local sample = nil
for i = 1, #NVWM.List do
    if NVWM.List[i].category == 'melee' then
        sample = NVWM.List[i]
        break
    end
end
Config.WeaponRoles[sample.item] = { '323456789012345678' }
local locked = NVWM.ResolveAccess({ '223456789012345678' }, false)
check('weapon lock', locked.byId[sample.id], nil)
local unlocked = NVWM.ResolveAccess({ '223456789012345678', '323456789012345678' }, false)
check('weapon lock opens', unlocked.byId[sample.id] ~= nil, true)
local aceBypass = NVWM.ResolveAccess({}, true)
check('ace bypasses lock', aceBypass.byId[sample.id] ~= nil, true)
Config.WeaponRoles[sample.item] = nil

Config.Roles['423456789012345678'] = { label = 'One', weapons = { NVWM.List[1].item } }
local one = NVWM.ResolveAccess({ '423456789012345678' }, false)
check('explicit count', #one.weapons, 1)
check('explicit id', one.weapons[1].id, NVWM.List[1].id)

local hashA = NVWM.AccessHash(NVWM.List)
local hashB = NVWM.AccessHash(NVWM.List)
local hashC = NVWM.AccessHash({ NVWM.List[1] })
check('hash stable', hashA, hashB)
check('hash differs', hashA ~= hashC, true)
check('hash nonzero', hashA ~= 0, true)

local counts = NVWM.CategoryCounts(pistols.weapons)
local counted = 0
for i = 1, #counts do counted = counted + counts[i].count end
check('category counts', counted, #pistols.weapons)

local packed = NVWM.PackWeapons({ NVWM.List[1] })
check('pack id', packed[1].id, NVWM.List[1].id)
check('pack label', packed[1].label, NVWM.List[1].label)

local victim = NVWM.List[#NVWM.List].item
local beforeDisable = #NVWM.List
Config.DisabledWeapons[victim] = true
NVWM.BuildCatalog()
check('disabled', NVWM.ByItem[victim:lower()], nil)
check('disabled shrinks', #NVWM.List, beforeDisable - 1)

Config.ExtraWeapons = {
    { item = 'WEAPON_NVTEST', label = 'NV Test', category = 'custom', ammo = 'ammo-9' },
}
NVWM.BuildCatalog()
local extra = NVWM.ByItem['weapon_nvtest']
check('extra item', extra ~= nil, true)
check('extra ammo', extra and extra.ammoLabel, '9mm')
check('extra category', extra and extra.category, 'custom')

if failures > 0 then
    print(failures .. ' failed')
    os.exit(1)
end
print('passed ' .. #NVWM.List .. ' weapons')
