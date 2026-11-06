-- VIP weapon pack for QBCore.
-- Load this from qb-core AFTER shared/items.lua and shared/weapons.lua.
--   qb-core/fxmanifest.lua  shared_scripts { ..., 'shared/vip_weapons.lua' }
-- Copy qb-inventory/html/images/*.png into qb-inventory/html/images/
-- Icons are 100x100 transparent PNGs, which is the inventory slot size.
-- Stock GTA weapons are registered only when qb-core does not already define them.

QBShared = QBShared or {}
QBShared.Items = QBShared.Items or {}
QBShared.Weapons = QBShared.Weapons or {}

-- Items
-- WEAPON_30P  shape=pistol  ox=ammo-44
QBShared.Items['weapon_30p'] = {
    name = 'weapon_30p',
    label = '30P',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_30p.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_4THOFJGLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_4thofjglock'] = {
    name = 'weapon_4thofjglock',
    label = '4Thofjglock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_4thofjglock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_ABYSSMR920P  shape=pistol  ox=ammo-44
QBShared.Items['weapon_abyssmr920p'] = {
    name = 'weapon_abyssmr920p',
    label = 'Abyssmr920p',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_abyssmr920p.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_ADVANCEDRIFLE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_advancedrifle'] == nil then
    QBShared.Items['weapon_advancedrifle'] = {
        name = 'weapon_advancedrifle',
        label = 'Advanced Rifle',
        weight = 3100,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_advancedrifle.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_ADVANCEDRIFLE_VORTEX  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_advancedrifle_vortex'] = {
    name = 'weapon_advancedrifle_vortex',
    label = 'Advancedrifle Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_advancedrifle_vortex.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_AKTIVEG22GRIP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_aktiveg22grip'] = {
    name = 'weapon_aktiveg22grip',
    label = 'Aktiveg22grip',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_aktiveg22grip.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_ANGELAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_angelap'] = {
    name = 'weapon_angelap',
    label = 'Angelap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_angelap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_ANGELBAT  shape=bat  ox=none
QBShared.Items['weapon_angelbat'] = {
    name = 'weapon_angelbat',
    label = 'Angelbat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_angelbat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_ANGELMP7  shape=smg  ox=ammo-9
QBShared.Items['weapon_angelmp7'] = {
    name = 'weapon_angelmp7',
    label = 'Angelmp7',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_angelmp7.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_APPISTOL  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_appistol'] == nil then
    QBShared.Items['weapon_appistol'] = {
        name = 'weapon_appistol',
        label = 'AP Pistol',
        weight = 1400,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_appistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_APPISTOL_GRAVEYARD  shape=pistol  ox=ammo-44
QBShared.Items['weapon_appistol_graveyard'] = {
    name = 'weapon_appistol_graveyard',
    label = 'Appistol Graveyard',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_appistol_graveyard.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_APPISTOL_IRONDUST  shape=pistol  ox=ammo-44
QBShared.Items['weapon_appistol_irondust'] = {
    name = 'weapon_appistol_irondust',
    label = 'Appistol Irondust',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_appistol_irondust.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_APPISTOL_RETROPIXEL  shape=pistol  ox=ammo-44
QBShared.Items['weapon_appistol_retropixel'] = {
    name = 'weapon_appistol_retropixel',
    label = 'Appistol Retropixel',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_appistol_retropixel.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_APPISTOL_STARKILLER  shape=pistol  ox=ammo-44
QBShared.Items['weapon_appistol_starkiller'] = {
    name = 'weapon_appistol_starkiller',
    label = 'Appistol Starkiller',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_appistol_starkiller.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_APPISTOL_STEAMPUNK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_appistol_steampunk'] = {
    name = 'weapon_appistol_steampunk',
    label = 'Appistol Steampunk',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_appistol_steampunk.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_ARPBCG  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_arpbcg'] = {
    name = 'weapon_arpbcg',
    label = 'Arpbcg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_arpbcg.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_ARPKYREE  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_arpkyree'] = {
    name = 'weapon_arpkyree',
    label = 'Arpkyree',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_arpkyree.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_ASSAULTRIFLE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_assaultrifle'] == nil then
    QBShared.Items['weapon_assaultrifle'] = {
        name = 'weapon_assaultrifle',
        label = 'Assault Rifle',
        weight = 4500,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_assaultrifle.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_ASSAULTRIFLE_MK2  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_assaultrifle_mk2'] == nil then
    QBShared.Items['weapon_assaultrifle_mk2'] = {
        name = 'weapon_assaultrifle_mk2',
        label = 'Assault Rifle MK2',
        weight = 2950,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_assaultrifle_mk2.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_ASSAULTRIFLE_MK2_DARKMATTER  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_assaultrifle_mk2_darkmatter'] = {
    name = 'weapon_assaultrifle_mk2_darkmatter',
    label = 'Assaultrifle Mk2 Darkmatter',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_assaultrifle_mk2_darkmatter.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_ASSAULTRIFLE_MK2_KAWAI  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_assaultrifle_mk2_kawai'] = {
    name = 'weapon_assaultrifle_mk2_kawai',
    label = 'Assaultrifle Mk2 Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_assaultrifle_mk2_kawai.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_ASSAULTRIFLE_MK2_VORTEX  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_assaultrifle_mk2_vortex'] = {
    name = 'weapon_assaultrifle_mk2_vortex',
    label = 'Assaultrifle Mk2 Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_assaultrifle_mk2_vortex.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_ASSAULTSHOTGUN  shape=shotgun  ox=ammo-shotgun
if QBShared.Items['weapon_assaultshotgun'] == nil then
    QBShared.Items['weapon_assaultshotgun'] = {
        name = 'weapon_assaultshotgun',
        label = 'Assault Shotgun',
        weight = 5200,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_assaultshotgun.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_ASSAULTSMG  shape=smg  ox=ammo-9
if QBShared.Items['weapon_assaultsmg'] == nil then
    QBShared.Items['weapon_assaultsmg'] = {
        name = 'weapon_assaultsmg',
        label = 'Assault SMG',
        weight = 2900,
        type = 'weapon',
        ammotype = 'AMMO_SMG',
        image = 'weapon_assaultsmg.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_ASSAULTSMG_RETROPIXEL  shape=smg  ox=ammo-9
QBShared.Items['weapon_assaultsmg_retropixel'] = {
    name = 'weapon_assaultsmg_retropixel',
    label = 'Assaultsmg Retropixel',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_assaultsmg_retropixel.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_ASSAULTSMG_VORTEX  shape=smg  ox=ammo-9
QBShared.Items['weapon_assaultsmg_vortex'] = {
    name = 'weapon_assaultsmg_vortex',
    label = 'Assaultsmg Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_assaultsmg_vortex.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_ATSDRACSEMI  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_atsdracsemi'] = {
    name = 'weapon_atsdracsemi',
    label = 'ATS Drac',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_atsdracsemi.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_AUTOSHOTGUN  shape=shotgun  ox=ammo-shotgun
if QBShared.Items['weapon_autoshotgun'] == nil then
    QBShared.Items['weapon_autoshotgun'] = {
        name = 'weapon_autoshotgun',
        label = 'Sweeper Shotgun',
        weight = 4400,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_autoshotgun.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_BALL  shape=ball  ox=none
if QBShared.Items['weapon_ball'] == nil then
    QBShared.Items['weapon_ball'] = {
        name = 'weapon_ball',
        label = 'Ball',
        weight = 149,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_ball.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_BANKSONGP2AK47  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_banksongp2ak47'] = {
    name = 'weapon_banksongp2ak47',
    label = 'Banksongp2ak47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2ak47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2AKS  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_banksongp2aks'] = {
    name = 'weapon_banksongp2aks',
    label = 'Banksongp2aks',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2aks.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2AR15  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2ar15'] = {
    name = 'weapon_banksongp2ar15',
    label = 'Banksongp2ar15',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2ar15.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2ARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_banksongp2arp'] = {
    name = 'weapon_banksongp2arp',
    label = 'Banksongp2arp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2arp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2ASVAL  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2asval'] = {
    name = 'weapon_banksongp2asval',
    label = 'Banksongp2asval',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2asval.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2BIZON  shape=smg  ox=ammo-9
QBShared.Items['weapon_banksongp2bizon'] = {
    name = 'weapon_banksongp2bizon',
    label = 'Banksongp2bizon',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_banksongp2bizon.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_BANKSONGP2CZ75  shape=pistol  ox=ammo-44
QBShared.Items['weapon_banksongp2cz75'] = {
    name = 'weapon_banksongp2cz75',
    label = 'Banksongp2cz75',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_banksongp2cz75.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BANKSONGP2DRACO  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_banksongp2draco'] = {
    name = 'weapon_banksongp2draco',
    label = 'Banksongp2draco',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2draco.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2EVO  shape=smg  ox=ammo-9
QBShared.Items['weapon_banksongp2evo'] = {
    name = 'weapon_banksongp2evo',
    label = 'Banksongp2evo',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_banksongp2evo.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_BANKSONGP2G17S  shape=pistol  ox=ammo-44
QBShared.Items['weapon_banksongp2g17s'] = {
    name = 'weapon_banksongp2g17s',
    label = 'Banksongp2g17s',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_banksongp2g17s.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BANKSONGP2G18C  shape=pistol  ox=ammo-44
QBShared.Items['weapon_banksongp2g18c'] = {
    name = 'weapon_banksongp2g18c',
    label = 'Banksongp2g18c',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_banksongp2g18c.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BANKSONGP2G22S  shape=pistol  ox=ammo-44
QBShared.Items['weapon_banksongp2g22s'] = {
    name = 'weapon_banksongp2g22s',
    label = 'Banksongp2g22s',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_banksongp2g22s.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BANKSONGP2G41S  shape=pistol  ox=ammo-44
QBShared.Items['weapon_banksongp2g41s'] = {
    name = 'weapon_banksongp2g41s',
    label = 'Banksongp2g41s',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_banksongp2g41s.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BANKSONGP2HK416  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2hk416'] = {
    name = 'weapon_banksongp2hk416',
    label = 'Banksongp2hk416',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2hk416.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2KRIGC  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2krigc'] = {
    name = 'weapon_banksongp2krigc',
    label = 'Banksongp2krigc',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2krigc.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2KVECTOR  shape=smg  ox=ammo-9
QBShared.Items['weapon_banksongp2kvector'] = {
    name = 'weapon_banksongp2kvector',
    label = 'Banksongp2kvector',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_banksongp2kvector.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_BANKSONGP2M4A1  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2m4a1'] = {
    name = 'weapon_banksongp2m4a1',
    label = 'Banksongp2m4a1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2m4a1.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2M4CQC  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2m4cqc'] = {
    name = 'weapon_banksongp2m4cqc',
    label = 'Banksongp2m4cqc',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2m4cqc.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2MKCQC  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2mkcqc'] = {
    name = 'weapon_banksongp2mkcqc',
    label = 'Banksongp2mkcqc',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2mkcqc.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2MP5  shape=smg  ox=ammo-9
QBShared.Items['weapon_banksongp2mp5'] = {
    name = 'weapon_banksongp2mp5',
    label = 'Banksongp2mp5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_banksongp2mp5.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_BANKSONGP2MP9  shape=smg  ox=ammo-9
QBShared.Items['weapon_banksongp2mp9'] = {
    name = 'weapon_banksongp2mp9',
    label = 'Banksongp2mp9',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_banksongp2mp9.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_BANKSONGP2MPL  shape=smg  ox=ammo-9
QBShared.Items['weapon_banksongp2mpl'] = {
    name = 'weapon_banksongp2mpl',
    label = 'Banksongp2mpl',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_banksongp2mpl.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_BANKSONGP2PP19  shape=smg  ox=ammo-9
QBShared.Items['weapon_banksongp2pp19'] = {
    name = 'weapon_banksongp2pp19',
    label = 'Banksongp2pp19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_banksongp2pp19.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_BANKSONGP2REN  shape=pistol  ox=ammo-44
QBShared.Items['weapon_banksongp2ren'] = {
    name = 'weapon_banksongp2ren',
    label = 'Banksongp2ren',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_banksongp2ren.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BANKSONGP2SCARH  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2scarh'] = {
    name = 'weapon_banksongp2scarh',
    label = 'Banksongp2scarh',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2scarh.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2SIG556  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2sig556'] = {
    name = 'weapon_banksongp2sig556',
    label = 'Banksongp2sig556',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2sig556.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2SIGMCX  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2sigmcx'] = {
    name = 'weapon_banksongp2sigmcx',
    label = 'Banksongp2sigmcx',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2sigmcx.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2SPAS12  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_banksongp2spas12'] = {
    name = 'weapon_banksongp2spas12',
    label = 'Banksongp2spas12',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_banksongp2spas12.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_BANKSONGP2SUPERI  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_banksongp2superi'] = {
    name = 'weapon_banksongp2superi',
    label = 'Banksongp2superi',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_banksongp2superi.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BANKSONGP2UMP45  shape=smg  ox=ammo-9
QBShared.Items['weapon_banksongp2ump45'] = {
    name = 'weapon_banksongp2ump45',
    label = 'Banksongp2ump45',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_banksongp2ump45.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_BAT  shape=bat  ox=none
if QBShared.Items['weapon_bat'] == nil then
    QBShared.Items['weapon_bat'] = {
        name = 'weapon_bat',
        label = 'Bat',
        weight = 1134,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_bat.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_BAT_KAWAI  shape=bat  ox=none
QBShared.Items['weapon_bat_kawai'] = {
    name = 'weapon_bat_kawai',
    label = 'Bat Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_bat_kawai.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_BATTLEAXE  shape=axe  ox=none
if QBShared.Items['weapon_battleaxe'] == nil then
    QBShared.Items['weapon_battleaxe'] = {
        name = 'weapon_battleaxe',
        label = 'Battle Axe',
        weight = 6500,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_battleaxe.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_BATTLEAXE_GRAVEYARD  shape=axe  ox=none
QBShared.Items['weapon_battleaxe_graveyard'] = {
    name = 'weapon_battleaxe_graveyard',
    label = 'Battleaxe Graveyard',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_battleaxe_graveyard.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_BATTLERIFLE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_battlerifle'] == nil then
    QBShared.Items['weapon_battlerifle'] = {
        name = 'weapon_battlerifle',
        label = 'Battle Rifle',
        weight = 3300,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_battlerifle.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_BBDIAMOND  shape=pistol  ox=ammo-44
QBShared.Items['weapon_bbdiamond'] = {
    name = 'weapon_bbdiamond',
    label = 'Bbdiamond',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bbdiamond.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BEANBAGSHOTGUN  shape=shotgun  ox=pd-beanbag
QBShared.Items['weapon_beanbagshotgun'] = {
    name = 'weapon_beanbagshotgun',
    label = 'Beanbagshotgun',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_beanbagshotgun.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_BLACKDIAMONDDRACO  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_blackdiamonddraco'] = {
    name = 'weapon_blackdiamonddraco',
    label = 'Blackdiamonddraco',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_blackdiamonddraco.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BLACKLIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_blacklightsaber'] = {
    name = 'weapon_blacklightsaber',
    label = 'Blacklightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_blacklightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_BLASTKNIFE  shape=knife  ox=none
QBShared.Items['weapon_blastknife'] = {
    name = 'weapon_blastknife',
    label = 'Blastknife',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_blastknife.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_BLASTXPHANTOM  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_blastxphantom'] = {
    name = 'weapon_blastxphantom',
    label = 'Blastxphantom',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_blastxphantom.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BLUEARPWSTRAP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_bluearpwstrap'] = {
    name = 'weapon_bluearpwstrap',
    label = 'Bluearpwstrap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_bluearpwstrap.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BLUELIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_bluelightsaber'] = {
    name = 'weapon_bluelightsaber',
    label = 'Bluelightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_bluelightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_BLUEONE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_blueone'] = {
    name = 'weapon_blueone',
    label = 'Blueone',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_blueone.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BLUEREAPER  shape=pistol  ox=ammo-44
QBShared.Items['weapon_bluereaper'] = {
    name = 'weapon_bluereaper',
    label = 'Bluereaper',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bluereaper.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BLUESPADEG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_bluespadeg17'] = {
    name = 'weapon_bluespadeg17',
    label = 'Bluespadeg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bluespadeg17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BLUESTORM  shape=pistol  ox=ammo-44
QBShared.Items['weapon_bluestorm'] = {
    name = 'weapon_bluestorm',
    label = 'Bluestorm',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bluestorm.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BLUEWIRE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_bluewire'] = {
    name = 'weapon_bluewire',
    label = 'Bluewire',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bluewire.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BONESHARD  shape=pistol  ox=ammo-9
QBShared.Items['weapon_boneshard'] = {
    name = 'weapon_boneshard',
    label = 'Boneshard',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_boneshard.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BONESHARDV2  shape=pistol  ox=ammo-9
QBShared.Items['weapon_boneshardv2'] = {
    name = 'weapon_boneshardv2',
    label = 'Boneshardv2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_boneshardv2.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BONGSHOT  shape=pistol  ox=ammo-9
QBShared.Items['weapon_bongshot'] = {
    name = 'weapon_bongshot',
    label = 'Bongshot',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bongshot.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BONGSHOTV2  shape=pistol  ox=ammo-9
QBShared.Items['weapon_bongshotv2'] = {
    name = 'weapon_bongshotv2',
    label = 'Bongshotv2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bongshotv2.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BOTTLE  shape=bottle  ox=none
if QBShared.Items['weapon_bottle'] == nil then
    QBShared.Items['weapon_bottle'] = {
        name = 'weapon_bottle',
        label = 'Bottle',
        weight = 350,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_bottle.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_BSEXT  shape=baton  ox=none
QBShared.Items['weapon_bsext'] = {
    name = 'weapon_bsext',
    label = 'Bsext',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_bsext.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_BSLAMP40  shape=smg  ox=ammo-9
QBShared.Items['weapon_bslamp40'] = {
    name = 'weapon_bslamp40',
    label = 'Bslamp40',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_bslamp40.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_BSLAPINK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_bslapink'] = {
    name = 'weapon_bslapink',
    label = 'Bslapink',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bslapink.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BSLAREDZONE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_bslaredzone'] = {
    name = 'weapon_bslaredzone',
    label = 'Bslaredzone',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bslaredzone.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BSLAWIRE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_bslawire'] = {
    name = 'weapon_bslawire',
    label = 'Bslawire',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_bslawire.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_BULLPUPMK2_KAWAI  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_bullpupmk2_kawai'] = {
    name = 'weapon_bullpupmk2_kawai',
    label = 'Bullpupmk2 Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_bullpupmk2_kawai.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BULLPUPMK2_RETROPIXEL  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_bullpupmk2_retropixel'] = {
    name = 'weapon_bullpupmk2_retropixel',
    label = 'Bullpupmk2 Retropixel',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_bullpupmk2_retropixel.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_BULLPUPRIFLE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_bullpuprifle'] == nil then
    QBShared.Items['weapon_bullpuprifle'] = {
        name = 'weapon_bullpuprifle',
        label = 'Bullpup Rifle',
        weight = 2900,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_bullpuprifle.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_BULLPUPRIFLE_MK2  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_bullpuprifle_mk2'] == nil then
    QBShared.Items['weapon_bullpuprifle_mk2'] = {
        name = 'weapon_bullpuprifle_mk2',
        label = 'Bullpup Rifle MK2',
        weight = 2900,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_bullpuprifle_mk2.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_BULLPUPSHOTGUN  shape=shotgun  ox=ammo-shotgun
if QBShared.Items['weapon_bullpupshotgun'] == nil then
    QBShared.Items['weapon_bullpupshotgun'] = {
        name = 'weapon_bullpupshotgun',
        label = 'Bullpup Shotgun',
        weight = 3100,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_bullpupshotgun.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_BZGAS  shape=gas  ox=none
if QBShared.Items['weapon_bzgas'] == nil then
    QBShared.Items['weapon_bzgas'] = {
        name = 'weapon_bzgas',
        label = 'BZ Gas',
        weight = 600,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_bzgas.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_CAMODRACO  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_camodraco'] = {
    name = 'weapon_camodraco',
    label = 'Camodraco',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_camodraco.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CAMOHELLCAT  shape=pistol  ox=ammo-44
QBShared.Items['weapon_camohellcat'] = {
    name = 'weapon_camohellcat',
    label = 'Camohellcat',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_camohellcat.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_CAMOWHITEGLOCK17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_camowhiteglock17'] = {
    name = 'weapon_camowhiteglock17',
    label = 'Camowhiteglock17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_camowhiteglock17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_CANDYCANE  shape=candycane  ox=none
if QBShared.Items['weapon_candycane'] == nil then
    QBShared.Items['weapon_candycane'] = {
        name = 'weapon_candycane',
        label = 'Candy Cane',
        weight = 85,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_candycane.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_CARBINERIFLE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_carbinerifle'] == nil then
    QBShared.Items['weapon_carbinerifle'] = {
        name = 'weapon_carbinerifle',
        label = 'Carbine Rifle',
        weight = 3100,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_carbinerifle.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_CARBINERIFLE_IRONDUST_MK2  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_carbinerifle_irondust_mk2'] = {
    name = 'weapon_carbinerifle_irondust_mk2',
    label = 'Carbinerifle Irondust Mk2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_carbinerifle_irondust_mk2.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CARBINERIFLE_MK2  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_carbinerifle_mk2'] == nil then
    QBShared.Items['weapon_carbinerifle_mk2'] = {
        name = 'weapon_carbinerifle_mk2',
        label = 'Carbine Rifle MK2',
        weight = 3000,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_carbinerifle_mk2.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_CARBINERIFLE_MK2_DARKMATTER  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_carbinerifle_mk2_darkmatter'] = {
    name = 'weapon_carbinerifle_mk2_darkmatter',
    label = 'Carbinerifle Mk2 Darkmatter',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_carbinerifle_mk2_darkmatter.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CARBINERIFLE_MK2_GRAVEYARD  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_carbinerifle_mk2_graveyard'] = {
    name = 'weapon_carbinerifle_mk2_graveyard',
    label = 'Carbinerifle Mk2 Graveyard',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_carbinerifle_mk2_graveyard.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CARBINERIFLE_MK2_KAWAI  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_carbinerifle_mk2_kawai'] = {
    name = 'weapon_carbinerifle_mk2_kawai',
    label = 'Carbinerifle Mk2 Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_carbinerifle_mk2_kawai.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CARBINERIFLE_MK2_RETROPIXEL  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_carbinerifle_mk2_retropixel'] = {
    name = 'weapon_carbinerifle_mk2_retropixel',
    label = 'Carbinerifle Mk2 Retropixel',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_carbinerifle_mk2_retropixel.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CARBINERIFLE_MK2_STARKILLER  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_carbinerifle_mk2_starkiller'] = {
    name = 'weapon_carbinerifle_mk2_starkiller',
    label = 'Carbinerifle Mk2 Starkiller',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_carbinerifle_mk2_starkiller.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CARBINERIFLE_MK2_STEAMPUNK  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_carbinerifle_mk2_steampunk'] = {
    name = 'weapon_carbinerifle_mk2_steampunk',
    label = 'Carbinerifle Mk2 Steampunk',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_carbinerifle_mk2_steampunk.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CARTOONAK  shape=ak  ox=ammo-9
QBShared.Items['weapon_cartoonak'] = {
    name = 'weapon_cartoonak',
    label = 'Cartoonak',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_cartoonak.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CERAMICPISTOL  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_ceramicpistol'] == nil then
    QBShared.Items['weapon_ceramicpistol'] = {
        name = 'weapon_ceramicpistol',
        label = 'Ceramic Pistol',
        weight = 800,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_ceramicpistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_CERTIFIEDUZI  shape=smg  ox=ammo-9
QBShared.Items['weapon_certifieduzi'] = {
    name = 'weapon_certifieduzi',
    label = 'Certifieduzi',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_certifieduzi.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_CHAINSAW  shape=chainsaw  ox=none
QBShared.Items['weapon_chainsaw'] = {
    name = 'weapon_chainsaw',
    label = 'Chainsaw',
    weight = 5000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_chainsaw.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_CHERRYKATANA  shape=katana  ox=none
QBShared.Items['weapon_cherrykatana'] = {
    name = 'weapon_cherrykatana',
    label = 'Cherrykatana',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_cherrykatana.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_CHERRYKUNAI  shape=knife  ox=none
QBShared.Items['weapon_cherrykunai'] = {
    name = 'weapon_cherrykunai',
    label = 'Cherrykunai',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_cherrykunai.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_CHERRYMP7  shape=smg  ox=ammo-9
QBShared.Items['weapon_cherrymp7'] = {
    name = 'weapon_cherrymp7',
    label = 'CHERRYMP7',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_cherrymp7.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_CHRISTMASGLOCK3  shape=pistol  ox=ammo-44
QBShared.Items['weapon_christmasglock3'] = {
    name = 'weapon_christmasglock3',
    label = 'Christmasglock3',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_christmasglock3.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_CHROMEWIRESMG  shape=smg  ox=ammo-9
QBShared.Items['weapon_chromewiresmg'] = {
    name = 'weapon_chromewiresmg',
    label = 'Chromewiresmg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_chromewiresmg.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_CHROMIUM9MMARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_chromium9mmarp'] = {
    name = 'weapon_chromium9mmarp',
    label = 'Chromium9mmarp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_chromium9mmarp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CHROMIUMAS2D  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_chromiumas2d'] = {
    name = 'weapon_chromiumas2d',
    label = 'Chromiumas2d',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_chromiumas2d.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_CHROMIUMBANSHEE  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_chromiumbanshee'] = {
    name = 'weapon_chromiumbanshee',
    label = 'Chromiumbanshee',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_chromiumbanshee.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CHROMIUMFOLDEDUMP  shape=smg  ox=ammo-9
QBShared.Items['weapon_chromiumfoldedump'] = {
    name = 'weapon_chromiumfoldedump',
    label = 'Chromiumfoldedump',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_chromiumfoldedump.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_CHROMIUMISO  shape=smg  ox=ammo-9
QBShared.Items['weapon_chromiumiso'] = {
    name = 'weapon_chromiumiso',
    label = 'Chromiumiso',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_chromiumiso.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_CHROMIUMMP5  shape=smg  ox=ammo-9
QBShared.Items['weapon_chromiummp5'] = {
    name = 'weapon_chromiummp5',
    label = 'Chromiummp5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_chromiummp5.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_CHROMIUMSMG  shape=smg  ox=ammo-9
QBShared.Items['weapon_chromiumsmg'] = {
    name = 'weapon_chromiumsmg',
    label = 'Chromiumsmg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_chromiumsmg.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_CHUCKYAKV1BYDAIE  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_chuckyakv1bydaie'] = {
    name = 'weapon_chuckyakv1bydaie',
    label = 'Chucky AK v1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_chuckyakv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CHUCKYSWITCHV1BYDAIE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_chuckyswitchv1bydaie'] = {
    name = 'weapon_chuckyswitchv1bydaie',
    label = 'Chucky Glock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_chuckyswitchv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_COMBATMG  shape=mg  ox=ammo-rifle
if QBShared.Items['weapon_combatmg'] == nil then
    QBShared.Items['weapon_combatmg'] = {
        name = 'weapon_combatmg',
        label = 'Combat MG',
        weight = 7500,
        type = 'weapon',
        ammotype = 'AMMO_MG',
        image = 'weapon_combatmg.png',
        unique = true,
        useable = false,
        description = 'Machine gun.',
    }
end

-- WEAPON_COMBATMG_MK2  shape=mg  ox=ammo-rifle
if QBShared.Items['weapon_combatmg_mk2'] == nil then
    QBShared.Items['weapon_combatmg_mk2'] = {
        name = 'weapon_combatmg_mk2',
        label = 'Combat MG MK2',
        weight = 8000,
        type = 'weapon',
        ammotype = 'AMMO_MG',
        image = 'weapon_combatmg_mk2.png',
        unique = true,
        useable = false,
        description = 'Machine gun.',
    }
end

-- WEAPON_COMBATMG_MK2_GRAVEYARD  shape=mg  ox=ammo-rifle
QBShared.Items['weapon_combatmg_mk2_graveyard'] = {
    name = 'weapon_combatmg_mk2_graveyard',
    label = 'Combatmg Mk2 Graveyard',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_combatmg_mk2_graveyard.png',
    unique = true,
    useable = false,
    description = 'Machine gun.',
}

-- WEAPON_COMBATPDW  shape=smg  ox=ammo-9
if QBShared.Items['weapon_combatpdw'] == nil then
    QBShared.Items['weapon_combatpdw'] = {
        name = 'weapon_combatpdw',
        label = 'Combat PDW',
        weight = 2300,
        type = 'weapon',
        ammotype = 'AMMO_SMG',
        image = 'weapon_combatpdw.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_COMBATPDW_IRONDUST  shape=smg  ox=ammo-9
QBShared.Items['weapon_combatpdw_irondust'] = {
    name = 'weapon_combatpdw_irondust',
    label = 'Combatpdw Irondust',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_combatpdw_irondust.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_COMBATPDW_KAWAI  shape=smg  ox=ammo-9
QBShared.Items['weapon_combatpdw_kawai'] = {
    name = 'weapon_combatpdw_kawai',
    label = 'Combatpdw Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_combatpdw_kawai.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_COMBATPISTOL  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_combatpistol'] == nil then
    QBShared.Items['weapon_combatpistol'] = {
        name = 'weapon_combatpistol',
        label = 'Combat Pistol',
        weight = 785,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_combatpistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_COMBATPISTOL_VORTEX  shape=pistol  ox=ammo-44
QBShared.Items['weapon_combatpistol_vortex'] = {
    name = 'weapon_combatpistol_vortex',
    label = 'Combatpistol Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_combatpistol_vortex.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_COMBATSHOTGUN  shape=shotgun  ox=ammo-shotgun
if QBShared.Items['weapon_combatshotgun'] == nil then
    QBShared.Items['weapon_combatshotgun'] = {
        name = 'weapon_combatshotgun',
        label = 'Combat Shotgun',
        weight = 4400,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_combatshotgun.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_COMPACTLAUNCHER  shape=launcher  ox=ammo-grenade
if QBShared.Items['weapon_compactlauncher'] == nil then
    QBShared.Items['weapon_compactlauncher'] = {
        name = 'weapon_compactlauncher',
        label = 'Compact Grenade Launcher',
        weight = 2500,
        type = 'weapon',
        ammotype = 'AMMO_GRENADELAUNCHER',
        image = 'weapon_compactlauncher.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_COMPACTRIFLE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_compactrifle'] == nil then
    QBShared.Items['weapon_compactrifle'] = {
        name = 'weapon_compactrifle',
        label = 'Compact Rifle',
        weight = 3600,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_compactrifle.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_CRAYONAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_crayonap'] = {
    name = 'weapon_crayonap',
    label = 'Crayonap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_crayonap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_CRAYONBAT  shape=bat  ox=none
QBShared.Items['weapon_crayonbat'] = {
    name = 'weapon_crayonbat',
    label = 'Crayonbat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_crayonbat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_CRAYONVECTOR  shape=smg  ox=ammo-9
QBShared.Items['weapon_crayonvector'] = {
    name = 'weapon_crayonvector',
    label = 'Crayonvector',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_crayonvector.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_CROWBAR  shape=crowbar  ox=none
if QBShared.Items['weapon_crowbar'] == nil then
    QBShared.Items['weapon_crowbar'] = {
        name = 'weapon_crowbar',
        label = 'Crowbar',
        weight = 2500,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_crowbar.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_CRUISEAR  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_cruisear'] = {
    name = 'weapon_cruisear',
    label = 'Cruisear',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_cruisear.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_CUPIDAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_cupidap'] = {
    name = 'weapon_cupidap',
    label = 'Cupidap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_cupidap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_CUTEAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_cuteap'] = {
    name = 'weapon_cuteap',
    label = 'Cuteap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_cuteap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_CUZZOG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_cuzzog17'] = {
    name = 'weapon_cuzzog17',
    label = 'Cuzzog17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_cuzzog17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_CYANKATANA  shape=katana  ox=none
QBShared.Items['weapon_cyankatana'] = {
    name = 'weapon_cyankatana',
    label = 'Cyankatana',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_cyankatana.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_CYANLIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_cyanlightsaber'] = {
    name = 'weapon_cyanlightsaber',
    label = 'Cyanlightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_cyanlightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_CYANREAPER  shape=pistol  ox=ammo-44
QBShared.Items['weapon_cyanreaper'] = {
    name = 'weapon_cyanreaper',
    label = 'Cyanreaper',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_cyanreaper.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DAGGER  shape=knife  ox=none
if QBShared.Items['weapon_dagger'] == nil then
    QBShared.Items['weapon_dagger'] = {
        name = 'weapon_dagger',
        label = 'Dagger',
        weight = 800,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_dagger.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_DARKMATTER_M4  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_darkmatter_m4'] = {
    name = 'weapon_darkmatter_m4',
    label = 'Darkmatter M4',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_darkmatter_m4.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DARKMATTER_MP40  shape=smg  ox=ammo-9
QBShared.Items['weapon_darkmatter_mp40'] = {
    name = 'weapon_darkmatter_mp40',
    label = 'Darkmatter Mp40',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_darkmatter_mp40.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_DARKMATTER_SP320  shape=pistol  ox=ammo-44
QBShared.Items['weapon_darkmatter_sp320'] = {
    name = 'weapon_darkmatter_sp320',
    label = 'Darkmatter Sp320',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_darkmatter_sp320.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DARKMATTER_SR47  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_darkmatter_sr47'] = {
    name = 'weapon_darkmatter_sr47',
    label = 'Darkmatter Sr47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_darkmatter_sr47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DARKMATTER_STRIKER  shape=pistol  ox=ammo-9
QBShared.Items['weapon_darkmatter_striker'] = {
    name = 'weapon_darkmatter_striker',
    label = 'Darkmatter Striker',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_darkmatter_striker.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DBSHOTGUN  shape=sawnoff  ox=ammo-shotgun
if QBShared.Items['weapon_dbshotgun'] == nil then
    QBShared.Items['weapon_dbshotgun'] = {
        name = 'weapon_dbshotgun',
        label = 'Double Barrel Shotgun',
        weight = 3175,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_dbshotgun.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_DCG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dcg19'] = {
    name = 'weapon_dcg19',
    label = 'Dcg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dcg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DCG23  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dcg23'] = {
    name = 'weapon_dcg23',
    label = 'Dcg23',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dcg23.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DEVILAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_devilap'] = {
    name = 'weapon_devilap',
    label = 'Devilap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_devilap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DEVILBAT  shape=bat  ox=none
QBShared.Items['weapon_devilbat'] = {
    name = 'weapon_devilbat',
    label = 'Devilbat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_devilbat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_DEZAK47  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_dezak47'] = {
    name = 'weapon_dezak47',
    label = 'Dezak47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_dezak47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DEZBOOMSTICK  shape=sawnoff  ox=ammo-44
QBShared.Items['weapon_dezboomstick'] = {
    name = 'weapon_dezboomstick',
    label = 'Dezboomstick',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dezboomstick.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_DG17G4  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dg17g4'] = {
    name = 'weapon_dg17g4',
    label = 'Dg17g4',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dg17g4.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DG17G5  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dg17g5'] = {
    name = 'weapon_dg17g5',
    label = 'Dg17g5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dg17g5.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DG18  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dg18'] = {
    name = 'weapon_dg18',
    label = 'Dg18',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dg18.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dg19'] = {
    name = 'weapon_dg19',
    label = 'Dg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DG19G5  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dg19g5'] = {
    name = 'weapon_dg19g5',
    label = 'Dg19g5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dg19g5.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DG19X  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dg19x'] = {
    name = 'weapon_dg19x',
    label = 'Dg19x',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dg19x.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DG20  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dg20'] = {
    name = 'weapon_dg20',
    label = 'Dg20',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dg20.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DG26G5  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dg26g5'] = {
    name = 'weapon_dg26g5',
    label = 'Dg26g5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dg26g5.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DG43X  shape=pistol  ox=ammo-44
QBShared.Items['weapon_dg43x'] = {
    name = 'weapon_dg43x',
    label = 'Dg43x',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dg43x.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DIAMOND_M4  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_diamond_m4'] = {
    name = 'weapon_diamond_m4',
    label = 'Diamond M4',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_diamond_m4.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DIAMOND_MP40  shape=smg  ox=ammo-9
QBShared.Items['weapon_diamond_mp40'] = {
    name = 'weapon_diamond_mp40',
    label = 'Diamond Mp40',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_diamond_mp40.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_DIAMOND_SP320  shape=pistol  ox=ammo-44
QBShared.Items['weapon_diamond_sp320'] = {
    name = 'weapon_diamond_sp320',
    label = 'Diamond Sp320',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_diamond_sp320.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DIAMOND_SR47  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_diamond_sr47'] = {
    name = 'weapon_diamond_sr47',
    label = 'Diamond Sr47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_diamond_sr47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DIAMOND_STRIKER  shape=pistol  ox=ammo-9
QBShared.Items['weapon_diamond_striker'] = {
    name = 'weapon_diamond_striker',
    label = 'Diamond Striker',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_diamond_striker.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DIESELAR13  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_dieselar13'] = {
    name = 'weapon_dieselar13',
    label = 'Dieselar13',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_dieselar13.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DIGISCANNER  shape=gadget  ox=ammo-9
if QBShared.Items['weapon_digiscanner'] == nil then
    QBShared.Items['weapon_digiscanner'] = {
        name = 'weapon_digiscanner',
        label = 'Digiscanner',
        weight = 12000,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_digiscanner.png',
        unique = true,
        useable = false,
        description = 'Utility weapon.',
    }
end

-- WEAPON_DILDO  shape=baton  ox=none
QBShared.Items['weapon_dildo'] = {
    name = 'weapon_dildo',
    label = 'Dildo',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_dildo.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_DILDOBAT  shape=bat  ox=none
QBShared.Items['weapon_dildobat'] = {
    name = 'weapon_dildobat',
    label = 'Dildobat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_dildobat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_DOUBLEACTION  shape=revolver  ox=ammo-44
if QBShared.Items['weapon_doubleaction'] == nil then
    QBShared.Items['weapon_doubleaction'] = {
        name = 'weapon_doubleaction',
        label = 'Double Action Revolver',
        weight = 940,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_doubleaction.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_DRACO2  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_draco2'] = {
    name = 'weapon_draco2',
    label = 'Draco2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_draco2.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DRACOZ  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_dracoz'] = {
    name = 'weapon_dracoz',
    label = 'Dracoz',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_dracoz.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DREADHORN  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_dreadhorn'] = {
    name = 'weapon_dreadhorn',
    label = 'Dreadhorn',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_dreadhorn.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DREADHORNV2  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_dreadhornv2'] = {
    name = 'weapon_dreadhornv2',
    label = 'Dreadhornv2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_dreadhornv2.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_DREAMYHBP80  shape=pistol  ox=ammo-9
QBShared.Items['weapon_dreamyhbp80'] = {
    name = 'weapon_dreamyhbp80',
    label = 'Dreamyhbp80',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_dreamyhbp80.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_DVIPER  shape=ar  ox=pd-rifle
QBShared.Items['weapon_dviper'] = {
    name = 'weapon_dviper',
    label = 'Dviper',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_dviper.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_EMPLAUNCHER  shape=emplauncher  ox=ammo-emp
if QBShared.Items['weapon_emplauncher'] == nil then
    QBShared.Items['weapon_emplauncher'] = {
        name = 'weapon_emplauncher',
        label = 'Compact EMP Launcher',
        weight = 2750,
        type = 'weapon',
        ammotype = 'AMMO_EMPLAUNCHER',
        image = 'weapon_emplauncher.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_ESMEMP67  shape=smg  ox=ammo-9
QBShared.Items['weapon_esmemp67'] = {
    name = 'weapon_esmemp67',
    label = 'Esmemp67',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_esmemp67.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_FERTILIZERCAN  shape=jerrycan  ox=none
if QBShared.Items['weapon_fertilizercan'] == nil then
    QBShared.Items['weapon_fertilizercan'] = {
        name = 'weapon_fertilizercan',
        label = 'Fertilizer Can',
        weight = 12000,
        type = 'weapon',
        ammotype = 'AMMO_FERTILIZERCAN',
        image = 'weapon_fertilizercan.png',
        unique = true,
        useable = false,
        description = 'Utility weapon.',
    }
end

-- WEAPON_FIREEXTINGUISHER  shape=extinguisher  ox=none
if QBShared.Items['weapon_fireextinguisher'] == nil then
    QBShared.Items['weapon_fireextinguisher'] = {
        name = 'weapon_fireextinguisher',
        label = 'Fire Extinguisher',
        weight = 8616,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_fireextinguisher.png',
        unique = true,
        useable = false,
        description = 'Utility weapon.',
    }
end

-- WEAPON_FIREWORK  shape=firework  ox=ammo-firework
if QBShared.Items['weapon_firework'] == nil then
    QBShared.Items['weapon_firework'] = {
        name = 'weapon_firework',
        label = 'Firework Launcher',
        weight = 12000,
        type = 'weapon',
        ammotype = 'AMMO_FIREWORK',
        image = 'weapon_firework.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_FLAME680  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_flame680'] = {
    name = 'weapon_flame680',
    label = 'Flame680',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_flame680.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_FLARE  shape=flare  ox=none
if QBShared.Items['weapon_flare'] == nil then
    QBShared.Items['weapon_flare'] = {
        name = 'weapon_flare',
        label = 'Flare',
        weight = 250,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_flare.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_FLAREGUN  shape=flaregun  ox=ammo-flare
if QBShared.Items['weapon_flaregun'] == nil then
    QBShared.Items['weapon_flaregun'] = {
        name = 'weapon_flaregun',
        label = 'Flare Gun',
        weight = 12000,
        type = 'weapon',
        ammotype = 'AMMO_FLARE',
        image = 'weapon_flaregun.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_FLASHLIGHT  shape=flashlight  ox=none
if QBShared.Items['weapon_flashlight'] == nil then
    QBShared.Items['weapon_flashlight'] = {
        name = 'weapon_flashlight',
        label = 'Flashlight',
        weight = 125,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_flashlight.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_FM1_HONEYBADGER  shape=ar  ox=pd-rifle
QBShared.Items['weapon_fm1_honeybadger'] = {
    name = 'weapon_fm1_honeybadger',
    label = 'Fm1 Honeybadger',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_fm1_honeybadger.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_FN57  shape=pistol  ox=ammo-44
QBShared.Items['weapon_fn57'] = {
    name = 'weapon_fn57',
    label = 'Fn57',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_fn57.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_FN57P  shape=pistol  ox=ammo-44
QBShared.Items['weapon_fn57p'] = {
    name = 'weapon_fn57p',
    label = 'Fn57p',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_fn57p.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_FNX45B  shape=pistol  ox=ammo-44
QBShared.Items['weapon_fnx45b'] = {
    name = 'weapon_fnx45b',
    label = 'Fnx45b',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_fnx45b.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_FORTNITEPICKAXE  shape=axe  ox=none
QBShared.Items['weapon_fortnitepickaxe'] = {
    name = 'weapon_fortnitepickaxe',
    label = 'Fortnitepickaxe',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_fortnitepickaxe.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_FORTNITEPISTOL  shape=pistol  ox=ammo-44
QBShared.Items['weapon_fortnitepistol'] = {
    name = 'weapon_fortnitepistol',
    label = 'Fortnitepistol',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_fortnitepistol.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_FREDDYAKV1BYDAIE  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_freddyakv1bydaie'] = {
    name = 'weapon_freddyakv1bydaie',
    label = 'Freddy AK',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_freddyakv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_FRENZYAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_frenzyap'] = {
    name = 'weapon_frenzyap',
    label = 'Frenzyap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_frenzyap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G17G5S  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g17g5s'] = {
    name = 'weapon_g17g5s',
    label = 'G17g5s',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g17g5s.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G17GEN5  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g17gen5'] = {
    name = 'weapon_g17gen5',
    label = 'G17gen5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g17gen5.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G19GRIP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g19grip'] = {
    name = 'weapon_g19grip',
    label = 'G19grip',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g19grip.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G19KIT  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g19kit'] = {
    name = 'weapon_g19kit',
    label = 'G19kit',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g19kit.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G19REDB  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g19redb'] = {
    name = 'weapon_g19redb',
    label = 'G19redb',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g19redb.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G19WGRIP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g19wgrip'] = {
    name = 'weapon_g19wgrip',
    label = 'G19wgrip',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g19wgrip.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G19XBINARY  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g19xbinary'] = {
    name = 'weapon_g19xbinary',
    label = 'G19xbinary',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g19xbinary.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G20  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g20'] = {
    name = 'weapon_g20',
    label = 'G20',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g20.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G21BLACK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g21black'] = {
    name = 'weapon_g21black',
    label = 'G21black',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g21black.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G21BLUE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g21blue'] = {
    name = 'weapon_g21blue',
    label = 'G21blue',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g21blue.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G21DRUM  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g21drum'] = {
    name = 'weapon_g21drum',
    label = 'G21drum',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g21drum.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G21GREEN  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g21green'] = {
    name = 'weapon_g21green',
    label = 'G21green',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g21green.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G21ICED  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g21iced'] = {
    name = 'weapon_g21iced',
    label = 'G21iced',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g21iced.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G21PINK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g21pink'] = {
    name = 'weapon_g21pink',
    label = 'G21pink',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g21pink.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G21RED  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g21red'] = {
    name = 'weapon_g21red',
    label = 'G21red',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g21red.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G41F  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g41f'] = {
    name = 'weapon_g41f',
    label = 'G41f',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g41f.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G43XC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g43xc'] = {
    name = 'weapon_g43xc',
    label = 'G43xc',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g43xc.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_G45S  shape=pistol  ox=ammo-44
QBShared.Items['weapon_g45s'] = {
    name = 'weapon_g45s',
    label = 'G45s',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_g45s.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GADGETPISTOL  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_gadgetpistol'] == nil then
    QBShared.Items['weapon_gadgetpistol'] = {
        name = 'weapon_gadgetpistol',
        label = 'Perico Pistol',
        weight = 1750,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_gadgetpistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_GALAXYAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_galaxyap'] = {
    name = 'weapon_galaxyap',
    label = 'Galaxyap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_galaxyap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GALAXYDRACO  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_galaxydraco'] = {
    name = 'weapon_galaxydraco',
    label = 'Galaxydraco',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_galaxydraco.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_GALAXYFOLDEDSIG  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_galaxyfoldedsig'] = {
    name = 'weapon_galaxyfoldedsig',
    label = 'Galaxyfoldedsig',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_galaxyfoldedsig.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_GALAXYR5  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_galaxyr5'] = {
    name = 'weapon_galaxyr5',
    label = 'Galaxyr5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_galaxyr5.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_GDMINISHOTGUN  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_gdminishotgun'] = {
    name = 'weapon_gdminishotgun',
    label = 'Gdminishotgun',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_gdminishotgun.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_GDUMP45  shape=smg  ox=ammo-9
QBShared.Items['weapon_gdump45'] = {
    name = 'weapon_gdump45',
    label = 'Gdump45',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_gdump45.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_GHOSTFACEAKV1BYDAIE  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_ghostfaceakv1bydaie'] = {
    name = 'weapon_ghostfaceakv1bydaie',
    label = 'Ghostface AK v1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_ghostfaceakv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_GHOSTFACESWITCHV1BYDAIE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_ghostfaceswitchv1bydaie'] = {
    name = 'weapon_ghostfaceswitchv1bydaie',
    label = 'Ghostface Glock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_ghostfaceswitchv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GK17_HALLOWEEN  shape=pistol  ox=ammo-44
QBShared.Items['weapon_gk17_halloween'] = {
    name = 'weapon_gk17_halloween',
    label = 'Halloween GK17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_gk17_halloween.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLACIAROVO  shape=pistol  ox=ammo-9
QBShared.Items['weapon_glaciarovo'] = {
    name = 'weapon_glaciarovo',
    label = 'Glaciarovo',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glaciarovo.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK17S  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock17s'] = {
    name = 'weapon_glock17s',
    label = 'Glock17s',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock17s.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK18C  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock18c'] = {
    name = 'weapon_glock18c',
    label = 'Glock18c',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock18c.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock19'] = {
    name = 'weapon_glock19',
    label = 'Glock19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK19S  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock19s'] = {
    name = 'weapon_glock19s',
    label = 'Glock19s',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock19s.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK21  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock21'] = {
    name = 'weapon_glock21',
    label = 'Glock21',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock21.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK26S  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock26s'] = {
    name = 'weapon_glock26s',
    label = 'Glock26s',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock26s.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK40  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock40'] = {
    name = 'weapon_glock40',
    label = 'Glock40',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock40.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK40S  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock40s'] = {
    name = 'weapon_glock40s',
    label = 'Glock40s',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock40s.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK_C1  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock_c1'] = {
    name = 'weapon_glock_c1',
    label = 'Glock C1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock_c1.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GLOCK_C2  shape=pistol  ox=ammo-44
QBShared.Items['weapon_glock_c2'] = {
    name = 'weapon_glock_c2',
    label = 'Glock C2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_glock_c2.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GOLDDIAMOND  shape=pistol  ox=ammo-44
QBShared.Items['weapon_golddiamond'] = {
    name = 'weapon_golddiamond',
    label = 'Golddiamond',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_golddiamond.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GOLDG17G5  shape=pistol  ox=ammo-44
QBShared.Items['weapon_goldg17g5'] = {
    name = 'weapon_goldg17g5',
    label = 'Goldg17g5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_goldg17g5.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GOLDG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_goldg19'] = {
    name = 'weapon_goldg19',
    label = 'Goldg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_goldg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GOLDG21  shape=pistol  ox=ammo-44
QBShared.Items['weapon_goldg21'] = {
    name = 'weapon_goldg21',
    label = 'Goldg21',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_goldg21.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GOLDGLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_goldglock'] = {
    name = 'weapon_goldglock',
    label = 'Goldglock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_goldglock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GOLDKOBRA  shape=pistol  ox=ammo-44
QBShared.Items['weapon_goldkobra'] = {
    name = 'weapon_goldkobra',
    label = 'Goldkobra',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_goldkobra.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GOLDMAKAROV  shape=pistol  ox=ammo-44
QBShared.Items['weapon_goldmakarov'] = {
    name = 'weapon_goldmakarov',
    label = 'Goldmakarov',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_goldmakarov.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GOLFCLUB  shape=golf  ox=none
if QBShared.Items['weapon_golfclub'] == nil then
    QBShared.Items['weapon_golfclub'] = {
        name = 'weapon_golfclub',
        label = 'Golf Club',
        weight = 330,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_golfclub.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_GREENLIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_greenlightsaber'] = {
    name = 'weapon_greenlightsaber',
    label = 'Greenlightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_greenlightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_GREENREAPER  shape=pistol  ox=ammo-44
QBShared.Items['weapon_greenreaper'] = {
    name = 'weapon_greenreaper',
    label = 'Greenreaper',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_greenreaper.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GRENADE  shape=grenade  ox=none
if QBShared.Items['weapon_grenade'] == nil then
    QBShared.Items['weapon_grenade'] = {
        name = 'weapon_grenade',
        label = 'Grenade',
        weight = 400,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_grenade.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_GRENADELAUNCHER  shape=launcher  ox=ammo-grenade
if QBShared.Items['weapon_grenadelauncher'] == nil then
    QBShared.Items['weapon_grenadelauncher'] = {
        name = 'weapon_grenadelauncher',
        label = 'Grenade Launcher',
        weight = 6500,
        type = 'weapon',
        ammotype = 'AMMO_GRENADELAUNCHER',
        image = 'weapon_grenadelauncher.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_GREYG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_greyg17'] = {
    name = 'weapon_greyg17',
    label = 'Greyg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_greyg17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GSPC  shape=pistol  ox=pd-pistol
QBShared.Items['weapon_gspc'] = {
    name = 'weapon_gspc',
    label = 'Gspc',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_gspc.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_GUSENBERG  shape=smg  ox=ammo-9
if QBShared.Items['weapon_gusenberg'] == nil then
    QBShared.Items['weapon_gusenberg'] = {
        name = 'weapon_gusenberg',
        label = 'Gusenberg',
        weight = 4900,
        type = 'weapon',
        ammotype = 'AMMO_MG',
        image = 'weapon_gusenberg.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_HALLOWEENGLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_halloweenglock'] = {
    name = 'weapon_halloweenglock',
    label = 'Halloween Glock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_halloweenglock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_HALLOWEENLIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_halloweenlightsaber'] = {
    name = 'weapon_halloweenlightsaber',
    label = 'Halloween Lightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_halloweenlightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_HAMMER  shape=hammer  ox=none
if QBShared.Items['weapon_hammer'] == nil then
    QBShared.Items['weapon_hammer'] = {
        name = 'weapon_hammer',
        label = 'Hammer',
        weight = 1200,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_hammer.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_HATCHET  shape=axe  ox=none
if QBShared.Items['weapon_hatchet'] == nil then
    QBShared.Items['weapon_hatchet'] = {
        name = 'weapon_hatchet',
        label = 'Hatchet',
        weight = 12000,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_hatchet.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_HAZARDAR  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_hazardar'] = {
    name = 'weapon_hazardar',
    label = 'Hazardar',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_hazardar.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_HAZARDCAN  shape=jerrycan  ox=none
if QBShared.Items['weapon_hazardcan'] == nil then
    QBShared.Items['weapon_hazardcan'] = {
        name = 'weapon_hazardcan',
        label = 'Hazard Can',
        weight = 12000,
        type = 'weapon',
        ammotype = 'AMMO_HAZARDCAN',
        image = 'weapon_hazardcan.png',
        unique = true,
        useable = false,
        description = 'Utility weapon.',
    }
end

-- WEAPON_HEARTBAT  shape=bat  ox=none
QBShared.Items['weapon_heartbat'] = {
    name = 'weapon_heartbat',
    label = 'Heartbat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_heartbat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_HEARTKNIFE  shape=knife  ox=none
QBShared.Items['weapon_heartknife'] = {
    name = 'weapon_heartknife',
    label = 'Heartknife',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_heartknife.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_HEAVYPISTOL  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_heavypistol'] == nil then
    QBShared.Items['weapon_heavypistol'] = {
        name = 'weapon_heavypistol',
        label = 'Heavy Pistol',
        weight = 1100,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_heavypistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_HEAVYRIFLE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_heavyrifle'] == nil then
    QBShared.Items['weapon_heavyrifle'] = {
        name = 'weapon_heavyrifle',
        label = 'Heavy Rifle',
        weight = 3300,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_heavyrifle.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_HEAVYSHOTGUN  shape=shotgun  ox=ammo-shotgun
if QBShared.Items['weapon_heavyshotgun'] == nil then
    QBShared.Items['weapon_heavyshotgun'] = {
        name = 'weapon_heavyshotgun',
        label = 'Heavy Shotgun',
        weight = 3600,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_heavyshotgun.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_HEAVYSNIPER  shape=sniper  ox=ammo-sniper
if QBShared.Items['weapon_heavysniper'] == nil then
    QBShared.Items['weapon_heavysniper'] = {
        name = 'weapon_heavysniper',
        label = 'Heavy Sniper',
        weight = 12700,
        type = 'weapon',
        ammotype = 'AMMO_SNIPER',
        image = 'weapon_heavysniper.png',
        unique = true,
        useable = false,
        description = 'Sniper rifle.',
    }
end

-- WEAPON_HEAVYSNIPER_MK2  shape=sniper  ox=ammo-sniper
if QBShared.Items['weapon_heavysniper_mk2'] == nil then
    QBShared.Items['weapon_heavysniper_mk2'] = {
        name = 'weapon_heavysniper_mk2',
        label = 'Heavy Sniper MK2',
        weight = 14000,
        type = 'weapon',
        ammotype = 'AMMO_SNIPER',
        image = 'weapon_heavysniper_mk2.png',
        unique = true,
        useable = false,
        description = 'Sniper rifle.',
    }
end

-- WEAPON_HEAVYSNIPER_MK2_DARKMATTER  shape=sniper  ox=ammo-sniper
QBShared.Items['weapon_heavysniper_mk2_darkmatter'] = {
    name = 'weapon_heavysniper_mk2_darkmatter',
    label = 'Heavysniper Mk2 Darkmatter',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SNIPER',
    image = 'weapon_heavysniper_mk2_darkmatter.png',
    unique = true,
    useable = false,
    description = 'Sniper rifle.',
}

-- WEAPON_HELLOKITTYSWITCHV1BYDAIE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_hellokittyswitchv1bydaie'] = {
    name = 'weapon_hellokittyswitchv1bydaie',
    label = 'Hello Kitty Glock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_hellokittyswitchv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_HELLOKITTYSWITCHV2BYDAIE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_hellokittyswitchv2bydaie'] = {
    name = 'weapon_hellokittyswitchv2bydaie',
    label = 'Hello Kitty Switch V2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_hellokittyswitchv2bydaie.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_HELLOKITTYSWITCHV3BYDAIE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_hellokittyswitchv3bydaie'] = {
    name = 'weapon_hellokittyswitchv3bydaie',
    label = 'Hello Kitty Switch V3',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_hellokittyswitchv3bydaie.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_HK45  shape=pistol  ox=ammo-44
QBShared.Items['weapon_hk45'] = {
    name = 'weapon_hk45',
    label = 'Hk45',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_hk45.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_HK516V2  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_hk516v2'] = {
    name = 'weapon_hk516v2',
    label = 'Hk516v2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_hk516v2.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_HKARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_hkarp'] = {
    name = 'weapon_hkarp',
    label = 'Hkarp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_hkarp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_HOMINGLAUNCHER  shape=rpg  ox=ammo-rocket
if QBShared.Items['weapon_hominglauncher'] == nil then
    QBShared.Items['weapon_hominglauncher'] = {
        name = 'weapon_hominglauncher',
        label = 'Homing Launcher',
        weight = 10000,
        type = 'weapon',
        ammotype = 'AMMO_RPG',
        image = 'weapon_hominglauncher.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_HONEYBADGER  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_honeybadger'] = {
    name = 'weapon_honeybadger',
    label = 'Honeybadger',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_honeybadger.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_HOTDOGBAT  shape=hotdog  ox=none
QBShared.Items['weapon_hotdogbat'] = {
    name = 'weapon_hotdogbat',
    label = 'Hotdogbat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_hotdogbat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_HTCHERRYAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_htcherryap'] = {
    name = 'weapon_htcherryap',
    label = 'Htcherryap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_htcherryap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_HTFOURTH  shape=pistol  ox=ammo-9
QBShared.Items['weapon_htfourth'] = {
    name = 'weapon_htfourth',
    label = 'Htfourth',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_htfourth.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_HTFOURTHAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_htfourthap'] = {
    name = 'weapon_htfourthap',
    label = 'Htfourthap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_htfourthap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_ICEAXE  shape=axe  ox=none
QBShared.Items['weapon_iceaxe'] = {
    name = 'weapon_iceaxe',
    label = 'Iceaxe',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_iceaxe.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_ICEDG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_icedg19'] = {
    name = 'weapon_icedg19',
    label = 'Icedg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_icedg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_ICEDMPA  shape=smg  ox=ammo-9
QBShared.Items['weapon_icedmpa'] = {
    name = 'weapon_icedmpa',
    label = 'Icedmpa',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_icedmpa.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_ICEGLOCKV2  shape=pistol  ox=ammo-44
QBShared.Items['weapon_iceglockv2'] = {
    name = 'weapon_iceglockv2',
    label = 'Iceglockv2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_iceglockv2.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_ICEICLE  shape=icicle  ox=none
QBShared.Items['weapon_iceicle'] = {
    name = 'weapon_iceicle',
    label = 'Iceicle',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_iceicle.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_INTERSTELLARGLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_interstellarglock'] = {
    name = 'weapon_interstellarglock',
    label = 'Interstellarglock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_interstellarglock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_IRIDESCENT39  shape=pistol  ox=ammo-44
QBShared.Items['weapon_iridescent39'] = {
    name = 'weapon_iridescent39',
    label = 'Iridescent39',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_iridescent39.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_JASONAKV1BYDAIE  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_jasonakv1bydaie'] = {
    name = 'weapon_jasonakv1bydaie',
    label = 'Jason AK v1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_jasonakv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_JAYDESMP40  shape=smg  ox=ammo-9
QBShared.Items['weapon_jaydesmp40'] = {
    name = 'weapon_jaydesmp40',
    label = 'Jaydesmp40',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_jaydesmp40.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_KAALBSP  shape=pistol  ox=ammo-9
QBShared.Items['weapon_kaalbsp'] = {
    name = 'weapon_kaalbsp',
    label = 'Kaalbsp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kaalbsp.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KAALFARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_kaalfarp'] = {
    name = 'weapon_kaalfarp',
    label = 'Kaalfarp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_kaalfarp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_KAALFAUG  shape=ar  ox=ammo-9
QBShared.Items['weapon_kaalfaug'] = {
    name = 'weapon_kaalfaug',
    label = 'Kaalfaug',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_kaalfaug.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_KAALFD3SWITCH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_kaalfd3switch'] = {
    name = 'weapon_kaalfd3switch',
    label = 'Kaalfd3switch',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kaalfd3switch.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KAALFGRAU  shape=ar  ox=ammo-9
QBShared.Items['weapon_kaalfgrau'] = {
    name = 'weapon_kaalfgrau',
    label = 'Kaalfgrau',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_kaalfgrau.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_KAALFGRIP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_kaalfgrip'] = {
    name = 'weapon_kaalfgrip',
    label = 'Kaalfgrip',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kaalfgrip.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KAALFKELTEC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_kaalfkeltec'] = {
    name = 'weapon_kaalfkeltec',
    label = 'Kaalfkeltec',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kaalfkeltec.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KAALFMK2  shape=pistol  ox=ammo-9
QBShared.Items['weapon_kaalfmk2'] = {
    name = 'weapon_kaalfmk2',
    label = 'Kaalfmk2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kaalfmk2.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KAALFP90  shape=smg  ox=ammo-9
QBShared.Items['weapon_kaalfp90'] = {
    name = 'weapon_kaalfp90',
    label = 'Kaalfp90',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_kaalfp90.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_KAALFSCAR  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_kaalfscar'] = {
    name = 'weapon_kaalfscar',
    label = 'Kaalfscar',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_kaalfscar.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_KAALFSHELLCATCHER  shape=pistol  ox=ammo-9
QBShared.Items['weapon_kaalfshellcatcher'] = {
    name = 'weapon_kaalfshellcatcher',
    label = 'Kaalfshellcatcher',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kaalfshellcatcher.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KAALFSTRIKER  shape=pistol  ox=ammo-9
QBShared.Items['weapon_kaalfstriker'] = {
    name = 'weapon_kaalfstriker',
    label = 'Kaalfstriker',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kaalfstriker.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KAALFSWORD  shape=sword  ox=none
QBShared.Items['weapon_kaalfsword'] = {
    name = 'weapon_kaalfsword',
    label = 'Kaalfsword',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_kaalfsword.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_KAALFSYTHE  shape=scythe  ox=none
QBShared.Items['weapon_kaalfsythe'] = {
    name = 'weapon_kaalfsythe',
    label = 'Kaalfsythe',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_kaalfsythe.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_KAALFTEC9  shape=smg  ox=ammo-9
QBShared.Items['weapon_kaalftec9'] = {
    name = 'weapon_kaalftec9',
    label = 'Kaalftec9',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_kaalftec9.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_KAALFX13  shape=pistol  ox=ammo-44
QBShared.Items['weapon_kaalfx13'] = {
    name = 'weapon_kaalfx13',
    label = 'Kaalfx13',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kaalfx13.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KAALRAM98  shape=pistol  ox=ammo-9
QBShared.Items['weapon_kaalram98'] = {
    name = 'weapon_kaalram98',
    label = 'Kaalram98',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kaalram98.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KAJSZS  shape=pistol  ox=ammo-44
QBShared.Items['weapon_kajszs'] = {
    name = 'weapon_kajszs',
    label = 'Kajszs',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kajszs.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_kc'] = {
    name = 'weapon_kc',
    label = 'Kc',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kc.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KELTEC  shape=pistol  ox=ammo-rifle
QBShared.Items['weapon_keltec'] = {
    name = 'weapon_keltec',
    label = 'Keltec',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_keltec.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KELTECPMR30  shape=pistol  ox=ammo-44
QBShared.Items['weapon_keltecpmr30'] = {
    name = 'weapon_keltecpmr30',
    label = 'Keltecpmr30',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_keltecpmr30.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KIKESGRAVEDIGGA  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_kikesgravedigga'] = {
    name = 'weapon_kikesgravedigga',
    label = 'Kikesgravedigga',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_kikesgravedigga.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_KISSAR  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_kissar'] = {
    name = 'weapon_kissar',
    label = 'Kissar',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_kissar.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_KNIFE  shape=knife  ox=none
if QBShared.Items['weapon_knife'] == nil then
    QBShared.Items['weapon_knife'] = {
        name = 'weapon_knife',
        label = 'Knife',
        weight = 300,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_knife.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_KNIFE_VORTEX  shape=knife  ox=none
QBShared.Items['weapon_knife_vortex'] = {
    name = 'weapon_knife_vortex',
    label = 'Knife Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_knife_vortex.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_KNUCKLE  shape=knuckle  ox=none
if QBShared.Items['weapon_knuckle'] == nil then
    QBShared.Items['weapon_knuckle'] = {
        name = 'weapon_knuckle',
        label = 'Knuckle Dusters',
        weight = 300,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_knuckle.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_KNUCKLE_DARKMATTER  shape=knuckle  ox=none
QBShared.Items['weapon_knuckle_darkmatter'] = {
    name = 'weapon_knuckle_darkmatter',
    label = 'Knuckle Darkmatter',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_knuckle_darkmatter.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_KTPLR  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_ktplr'] = {
    name = 'weapon_ktplr',
    label = 'Ktplr',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_ktplr.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_KVEC  shape=smg  ox=ammo-9
QBShared.Items['weapon_kvec'] = {
    name = 'weapon_kvec',
    label = 'Kvec',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_kvec.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_KVR  shape=pistol  ox=pd-pistol
QBShared.Items['weapon_kvr'] = {
    name = 'weapon_kvr',
    label = 'Kvr',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kvr.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KYREEARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_kyreearp'] = {
    name = 'weapon_kyreearp',
    label = 'Kyreearp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_kyreearp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_KYREEBAT  shape=bat  ox=none
QBShared.Items['weapon_kyreebat'] = {
    name = 'weapon_kyreebat',
    label = 'Kyreebat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_kyreebat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_KYREEG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_kyreeg19'] = {
    name = 'weapon_kyreeg19',
    label = 'Kyreeg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_kyreeg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_KYREEMP5  shape=smg  ox=ammo-9
QBShared.Items['weapon_kyreemp5'] = {
    name = 'weapon_kyreemp5',
    label = 'Kyreemp5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_kyreemp5.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_KYREESG  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_kyreesg'] = {
    name = 'weapon_kyreesg',
    label = 'Kyreesg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_kyreesg.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_LAVAG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lavag19'] = {
    name = 'weapon_lavag19',
    label = 'Lavag19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lavag19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LEATHERFACEAKV1BYDAIE  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_leatherfaceakv1bydaie'] = {
    name = 'weapon_leatherfaceakv1bydaie',
    label = 'Leatherface AK v1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_leatherfaceakv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LIFESTYLEFX16  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lifestylefx16'] = {
    name = 'weapon_lifestylefx16',
    label = 'Lifestylefx16',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lifestylefx16.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LIFESTYLEX16  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lifestylex16'] = {
    name = 'weapon_lifestylex16',
    label = 'Lifestylex16',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lifestylex16.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LIGHTINGG17ATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lightingg17attach'] = {
    name = 'weapon_lightingg17attach',
    label = 'Lightingg17attach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lightingg17attach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LIMEHOLOAR  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_limeholoar'] = {
    name = 'weapon_limeholoar',
    label = 'Limeholoar',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_limeholoar.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LIMEKATANA  shape=katana  ox=none
QBShared.Items['weapon_limekatana'] = {
    name = 'weapon_limekatana',
    label = 'Limekatana',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_limekatana.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSARGENTINAATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsargentinaattach'] = {
    name = 'weapon_lsargentinaattach',
    label = 'Lsargentinaattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsargentinaattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSAURACOMBAT  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_lsauracombat'] = {
    name = 'weapon_lsauracombat',
    label = 'Auracombat',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_lsauracombat.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_LSAURADAGGER  shape=knife  ox=none
QBShared.Items['weapon_lsauradagger'] = {
    name = 'weapon_lsauradagger',
    label = 'Auradagger',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsauradagger.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSAURAGRAU  shape=ar  ox=ammo-9
QBShared.Items['weapon_lsauragrau'] = {
    name = 'weapon_lsauragrau',
    label = 'Auragrau',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_lsauragrau.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSAURASHOTTY  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_lsaurashotty'] = {
    name = 'weapon_lsaurashotty',
    label = 'Aurashotty',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_lsaurashotty.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_LSAXEOFGODS  shape=axe  ox=none
QBShared.Items['weapon_lsaxeofgods'] = {
    name = 'weapon_lsaxeofgods',
    label = 'Axeofgods',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsaxeofgods.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSBADDIES2  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbaddies2'] = {
    name = 'weapon_lsbaddies2',
    label = 'Baddies2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbaddies2.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSBADDIESG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbaddiesg19'] = {
    name = 'weapon_lsbaddiesg19',
    label = 'Baddiesg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbaddiesg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSBADDIESS1  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbaddiess1'] = {
    name = 'weapon_lsbaddiess1',
    label = 'Baddiess1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbaddiess1.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSBBLG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbblg17'] = {
    name = 'weapon_lsbblg17',
    label = 'Bblg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbblg17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSBEACHUMP  shape=smg  ox=ammo-44
QBShared.Items['weapon_lsbeachump'] = {
    name = 'weapon_lsbeachump',
    label = 'Beachump',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbeachump.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_LSBFLOWERG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbflowerg19'] = {
    name = 'weapon_lsbflowerg19',
    label = 'Bflowerg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbflowerg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSBHMCG  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbhmcg'] = {
    name = 'weapon_lsbhmcg',
    label = 'Bhmcg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbhmcg.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSBHMG21  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbhmg21'] = {
    name = 'weapon_lsbhmg21',
    label = 'Bhmg21',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbhmg21.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSBLOODYNIGHTS  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbloodynights'] = {
    name = 'weapon_lsbloodynights',
    label = 'Bloodynights',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbloodynights.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSBLUECHROME  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbluechrome'] = {
    name = 'weapon_lsbluechrome',
    label = 'Bluechrome',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbluechrome.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSBLUESABER  shape=saber  ox=none
QBShared.Items['weapon_lsbluesaber'] = {
    name = 'weapon_lsbluesaber',
    label = 'Bluesaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsbluesaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSBRG17  shape=ar  ox=ammo-44
QBShared.Items['weapon_lsbrg17'] = {
    name = 'weapon_lsbrg17',
    label = 'Brg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbrg17.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSBYG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsbyg17'] = {
    name = 'weapon_lsbyg17',
    label = 'Byg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsbyg17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSC19GRIP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsc19grip'] = {
    name = 'weapon_lsc19grip',
    label = 'C19grip',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsc19grip.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCAMOATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lscamoattach'] = {
    name = 'weapon_lscamoattach',
    label = 'Camoattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscamoattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCAMOG22  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lscamog22'] = {
    name = 'weapon_lscamog22',
    label = 'Camog22',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscamog22.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCAMOMP5  shape=smg  ox=ammo-44
QBShared.Items['weapon_lscamomp5'] = {
    name = 'weapon_lscamomp5',
    label = 'Camomp5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscamomp5.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_LSCANDYAXE  shape=axe  ox=none
QBShared.Items['weapon_lscandyaxe'] = {
    name = 'weapon_lscandyaxe',
    label = 'Candyaxe',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lscandyaxe.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSCHCLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lschclock'] = {
    name = 'weapon_lschclock',
    label = 'Chclock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lschclock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCHERRYARP  shape=arp  ox=ammo-44
QBShared.Items['weapon_lscherryarp'] = {
    name = 'weapon_lscherryarp',
    label = 'Cherryarp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscherryarp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSCHERRYBADGER  shape=ar  ox=ammo-44
QBShared.Items['weapon_lscherrybadger'] = {
    name = 'weapon_lscherrybadger',
    label = 'Lscherrybadger',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscherrybadger.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSCHERRYBLOSSOMST  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lscherryblossomst'] = {
    name = 'weapon_lscherryblossomst',
    label = 'Lscherryblossomst',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscherryblossomst.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCHROMEATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lschromeattach'] = {
    name = 'weapon_lschromeattach',
    label = 'Chromeattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lschromeattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCHROMEFNX  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lschromefnx'] = {
    name = 'weapon_lschromefnx',
    label = 'Chromefnx',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lschromefnx.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCHROMEGRIPG22  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lschromegripg22'] = {
    name = 'weapon_lschromegripg22',
    label = 'Chromegripg22',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lschromegripg22.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCHROMETEC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lschrometec'] = {
    name = 'weapon_lschrometec',
    label = 'Chrometec',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lschrometec.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCHROMNESAWOFF  shape=sawnoff  ox=ammo-shotgun
QBShared.Items['weapon_lschromnesawoff'] = {
    name = 'weapon_lschromnesawoff',
    label = 'Chromnesawoff',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_lschromnesawoff.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_LSCLOUDYG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lscloudyg19'] = {
    name = 'weapon_lscloudyg19',
    label = 'Cloudyg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscloudyg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCLOUDYG22  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lscloudyg22'] = {
    name = 'weapon_lscloudyg22',
    label = 'Lscloudyg22',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscloudyg22.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCOSMICGLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lscosmicglock'] = {
    name = 'weapon_lscosmicglock',
    label = 'Cosmicglock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscosmicglock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCRACKEDG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lscrackedg19'] = {
    name = 'weapon_lscrackedg19',
    label = 'Crackedg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscrackedg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCREDGRIPG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lscredgripg17'] = {
    name = 'weapon_lscredgripg17',
    label = 'Credgripg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscredgripg17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCUSTOMGOLDG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lscustomgoldg17'] = {
    name = 'weapon_lscustomgoldg17',
    label = 'Customgoldg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscustomgoldg17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSCYBERBAL27  shape=ar  ox=ammo-44
QBShared.Items['weapon_lscyberbal27'] = {
    name = 'weapon_lscyberbal27',
    label = 'Cyberbal27',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lscyberbal27.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSDAMASCUSC17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsdamascusc17'] = {
    name = 'weapon_lsdamascusc17',
    label = 'Damascusc17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsdamascusc17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSDIAMONDFN57  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsdiamondfn57'] = {
    name = 'weapon_lsdiamondfn57',
    label = 'Lsdiamondfn57',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsdiamondfn57.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSDRAGONBORN  shape=pistol  ox=ammo-9
QBShared.Items['weapon_lsdragonborn'] = {
    name = 'weapon_lsdragonborn',
    label = 'Lsdragonborn',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsdragonborn.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSEASTERCLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lseasterclock'] = {
    name = 'weapon_lseasterclock',
    label = 'Easterclock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lseasterclock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSEASTERPICKAXE  shape=axe  ox=none
QBShared.Items['weapon_lseasterpickaxe'] = {
    name = 'weapon_lseasterpickaxe',
    label = 'Easterpickaxe',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lseasterpickaxe.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSELITECLEAT  shape=cleat  ox=none
QBShared.Items['weapon_lselitecleat'] = {
    name = 'weapon_lselitecleat',
    label = 'Elitecleat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lselitecleat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSFNCSAXE  shape=axe  ox=none
QBShared.Items['weapon_lsfncsaxe'] = {
    name = 'weapon_lsfncsaxe',
    label = 'Fncsaxe',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsfncsaxe.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSFNGFLEX  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsfngflex'] = {
    name = 'weapon_lsfngflex',
    label = 'Fngflex',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsfngflex.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSFNX45P  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsfnx45p'] = {
    name = 'weapon_lsfnx45p',
    label = 'Fnx45p',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsfnx45p.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSFNX45R  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsfnx45r'] = {
    name = 'weapon_lsfnx45r',
    label = 'Fnx45r',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsfnx45r.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSFRANCEATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsfranceattach'] = {
    name = 'weapon_lsfranceattach',
    label = 'Lsfranceattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsfranceattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSG17C  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsg17c'] = {
    name = 'weapon_lsg17c',
    label = 'G17c',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsg17c.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSG17X  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsg17x'] = {
    name = 'weapon_lsg17x',
    label = 'G17x',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsg17x.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSG19G4  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsg19g4'] = {
    name = 'weapon_lsg19g4',
    label = 'G19g4',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsg19g4.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSG19VOID  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsg19void'] = {
    name = 'weapon_lsg19void',
    label = 'G19void',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsg19void.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSG19XJ  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsg19xj'] = {
    name = 'weapon_lsg19xj',
    label = 'G19xj',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsg19xj.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSG19XP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsg19xp'] = {
    name = 'weapon_lsg19xp',
    label = 'G19xp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsg19xp.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSG21RED  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsg21red'] = {
    name = 'weapon_lsg21red',
    label = 'G21red',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsg21red.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSG26P80C  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsg26p80c'] = {
    name = 'weapon_lsg26p80c',
    label = 'G26p80c',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsg26p80c.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSGALAXYCG  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsgalaxycg'] = {
    name = 'weapon_lsgalaxycg',
    label = 'Galaxycg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsgalaxycg.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSGALAXYFN502  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsgalaxyfn502'] = {
    name = 'weapon_lsgalaxyfn502',
    label = 'Galaxyfn502',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsgalaxyfn502.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSGARA  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsgara'] = {
    name = 'weapon_lsgara',
    label = 'Gara',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsgara.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSGHOST1  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsghost1'] = {
    name = 'weapon_lsghost1',
    label = 'Ghost1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsghost1.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSGHOST2  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsghost2'] = {
    name = 'weapon_lsghost2',
    label = 'Ghost2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsghost2.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSGLIGHTINGVECTOR  shape=smg  ox=ammo-44
QBShared.Items['weapon_lsglightingvector'] = {
    name = 'weapon_lsglightingvector',
    label = 'Glightingvector',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsglightingvector.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_LSGOLDAK  shape=ak  ox=ammo-9
QBShared.Items['weapon_lsgoldak'] = {
    name = 'weapon_lsgoldak',
    label = 'Goldak',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_lsgoldak.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSGOLDBAPEGRIP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsgoldbapegrip'] = {
    name = 'weapon_lsgoldbapegrip',
    label = 'Goldbapegrip',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsgoldbapegrip.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSGRAFFITIATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsgraffitiattach'] = {
    name = 'weapon_lsgraffitiattach',
    label = 'Graffitiattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsgraffitiattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSGRAFFITIMPL  shape=smg  ox=ammo-44
QBShared.Items['weapon_lsgraffitimpl'] = {
    name = 'weapon_lsgraffitimpl',
    label = 'Graffitimpl',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsgraffitimpl.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_LSGREENKELTEC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsgreenkeltec'] = {
    name = 'weapon_lsgreenkeltec',
    label = 'Greenkeltec',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsgreenkeltec.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSGREENSABER  shape=saber  ox=none
QBShared.Items['weapon_lsgreensaber'] = {
    name = 'weapon_lsgreensaber',
    label = 'Greensaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsgreensaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSHAZARDG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lshazardg17'] = {
    name = 'weapon_lshazardg17',
    label = 'Hazardg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lshazardg17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSHINATA  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lshinata'] = {
    name = 'weapon_lshinata',
    label = 'Hinata',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lshinata.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSHOLLOWNIGHTS  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lshollownights'] = {
    name = 'weapon_lshollownights',
    label = 'Lshollownights',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lshollownights.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSICEBREAKER  shape=axe  ox=none
QBShared.Items['weapon_lsicebreaker'] = {
    name = 'weapon_lsicebreaker',
    label = 'Icebreaker',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsicebreaker.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSICEDSPAZZ12  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_lsicedspazz12'] = {
    name = 'weapon_lsicedspazz12',
    label = 'Icedspazz12',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_lsicedspazz12.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_LSINFECTEDKNIFE  shape=knife  ox=none
QBShared.Items['weapon_lsinfectedknife'] = {
    name = 'weapon_lsinfectedknife',
    label = 'Infectedknife',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsinfectedknife.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSIRIC19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsiric19'] = {
    name = 'weapon_lsiric19',
    label = 'Iric19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsiric19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSIRMAC10  shape=smg  ox=ammo-9
QBShared.Items['weapon_lsirmac10'] = {
    name = 'weapon_lsirmac10',
    label = 'Irmac10',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_lsirmac10.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_LSJAMAICANATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsjamaicanattach'] = {
    name = 'weapon_lsjamaicanattach',
    label = 'Lsjamaicanattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsjamaicanattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSKARAMBIT  shape=knife  ox=none
QBShared.Items['weapon_lskarambit'] = {
    name = 'weapon_lskarambit',
    label = 'Lskarambit',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lskarambit.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSKELTEC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lskeltec'] = {
    name = 'weapon_lskeltec',
    label = 'Keltec',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lskeltec.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSLAVADRACO  shape=draco  ox=ammo-44
QBShared.Items['weapon_lslavadraco'] = {
    name = 'weapon_lslavadraco',
    label = 'Lavadraco',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lslavadraco.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSLEOPARDG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsleopardg19'] = {
    name = 'weapon_lsleopardg19',
    label = 'Leopardg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsleopardg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSLIGHTINGP320  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lslightingp320'] = {
    name = 'weapon_lslightingp320',
    label = 'Lightingp320',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lslightingp320.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSM16  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_lsm16'] = {
    name = 'weapon_lsm16',
    label = 'M16',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_lsm16.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSMAGMACG  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsmagmacg'] = {
    name = 'weapon_lsmagmacg',
    label = 'Magmacg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsmagmacg.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSMARBLECLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsmarbleclock'] = {
    name = 'weapon_lsmarbleclock',
    label = 'Marbleclock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsmarbleclock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSMAT4  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsmat4'] = {
    name = 'weapon_lsmat4',
    label = 'Mat4',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsmat4.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSMEXICOATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsmexicoattach'] = {
    name = 'weapon_lsmexicoattach',
    label = 'Lsmexicoattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsmexicoattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSMP5SUP  shape=smg  ox=ammo-44
QBShared.Items['weapon_lsmp5sup'] = {
    name = 'weapon_lsmp5sup',
    label = 'Mp5sup',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsmp5sup.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_LSNEBULAG19X  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsnebulag19x'] = {
    name = 'weapon_lsnebulag19x',
    label = 'Nebulag19x',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsnebulag19x.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSOCEANCOMBAT  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_lsoceancombat'] = {
    name = 'weapon_lsoceancombat',
    label = 'Oceancombat',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_lsoceancombat.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_LSOGTEC9  shape=smg  ox=ammo-9
QBShared.Items['weapon_lsogtec9'] = {
    name = 'weapon_lsogtec9',
    label = 'Ogtec9',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_lsogtec9.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_LSORANGECHROME  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsorangechrome'] = {
    name = 'weapon_lsorangechrome',
    label = 'Orangechrome',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsorangechrome.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSP420  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsp420'] = {
    name = 'weapon_lsp420',
    label = 'P420',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsp420.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPERSYLIGHTNING  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lspersylightning'] = {
    name = 'weapon_lspersylightning',
    label = 'Persylightning',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspersylightning.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPFLOWERG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lspflowerg19'] = {
    name = 'weapon_lspflowerg19',
    label = 'Pflowerg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspflowerg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPINKATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lspinkattach'] = {
    name = 'weapon_lspinkattach',
    label = 'Pinkattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspinkattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPINKCLOUD  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lspinkcloud'] = {
    name = 'weapon_lspinkcloud',
    label = 'Pinkcloud',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspinkcloud.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPLEOPARDG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lspleopardg19'] = {
    name = 'weapon_lspleopardg19',
    label = 'Pleopardg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspleopardg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPMATRIX  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lspmatrix'] = {
    name = 'weapon_lspmatrix',
    label = 'Pmatrix',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspmatrix.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPQUEEN  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lspqueen'] = {
    name = 'weapon_lspqueen',
    label = 'Pqueen',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspqueen.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPURPCHROMEDAGGER  shape=knife  ox=ammo-44
QBShared.Items['weapon_lspurpchromedagger'] = {
    name = 'weapon_lspurpchromedagger',
    label = 'Purpchromedagger',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspurpchromedagger.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSPURPLEBG  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lspurplebg'] = {
    name = 'weapon_lspurplebg',
    label = 'Purplebg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspurplebg.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPURPLECG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lspurplecg19'] = {
    name = 'weapon_lspurplecg19',
    label = 'Purplecg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspurplecg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSPURPLESABER  shape=saber  ox=none
QBShared.Items['weapon_lspurplesaber'] = {
    name = 'weapon_lspurplesaber',
    label = 'Purplesaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lspurplesaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSPURPTIGERMP5  shape=smg  ox=ammo-44
QBShared.Items['weapon_lspurptigermp5'] = {
    name = 'weapon_lspurptigermp5',
    label = 'Lspurptigermp5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lspurptigermp5.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_LSR4C  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_lsr4c'] = {
    name = 'weapon_lsr4c',
    label = 'R4c',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_lsr4c.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSRAINBOWSMASH  shape=hammer  ox=none
QBShared.Items['weapon_lsrainbowsmash'] = {
    name = 'weapon_lsrainbowsmash',
    label = 'Rainbowsmash',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsrainbowsmash.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSREDBONE  shape=bone  ox=ammo-9
QBShared.Items['weapon_lsredbone'] = {
    name = 'weapon_lsredbone',
    label = 'Redbone',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsredbone.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSREDCAMOGRIP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsredcamogrip'] = {
    name = 'weapon_lsredcamogrip',
    label = 'Redcamogrip',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsredcamogrip.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSREDGALAXYG19X  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsredgalaxyg19x'] = {
    name = 'weapon_lsredgalaxyg19x',
    label = 'Redgalaxyg19x',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsredgalaxyg19x.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSREDP320  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsredp320'] = {
    name = 'weapon_lsredp320',
    label = 'Redp320',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsredp320.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSREDSABER  shape=saber  ox=none
QBShared.Items['weapon_lsredsaber'] = {
    name = 'weapon_lsredsaber',
    label = 'Redsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsredsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSREVENGEMOSIN  shape=sniper  ox=ammo-sniper
QBShared.Items['weapon_lsrevengemosin'] = {
    name = 'weapon_lsrevengemosin',
    label = 'Revengemosin',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SNIPER',
    image = 'weapon_lsrevengemosin.png',
    unique = true,
    useable = false,
    description = 'Sniper rifle.',
}

-- WEAPON_LSRUBYATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsrubyattach'] = {
    name = 'weapon_lsrubyattach',
    label = 'Rubyattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsrubyattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSRUBYDRACO  shape=draco  ox=ammo-44
QBShared.Items['weapon_lsrubydraco'] = {
    name = 'weapon_lsrubydraco',
    label = 'Rubydraco',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsrubydraco.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSRUBYSAWNOFF  shape=sawnoff  ox=ammo-shotgun
QBShared.Items['weapon_lsrubysawnoff'] = {
    name = 'weapon_lsrubysawnoff',
    label = 'Rubysawnoff',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_lsrubysawnoff.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_LSRUBYTEC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsrubytec'] = {
    name = 'weapon_lsrubytec',
    label = 'Rubytec',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsrubytec.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSAWNOFF  shape=sawnoff  ox=ammo-shotgun
QBShared.Items['weapon_lssawnoff'] = {
    name = 'weapon_lssawnoff',
    label = 'Sawnoff',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_lssawnoff.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_LSSEMIDRACO  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_lssemidraco'] = {
    name = 'weapon_lssemidraco',
    label = 'Semidraco',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_lssemidraco.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSSKULL  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsskull'] = {
    name = 'weapon_lsskull',
    label = 'Skull',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsskull.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSLIMEGRIPG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsslimegripg17'] = {
    name = 'weapon_lsslimegripg17',
    label = 'Slimegripg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsslimegripg17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSLINGSHOT  shape=slingshot  ox=ammo-44
QBShared.Items['weapon_lsslingshot'] = {
    name = 'weapon_lsslingshot',
    label = 'Slingshot',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsslingshot.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSPAINATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsspainattach'] = {
    name = 'weapon_lsspainattach',
    label = 'Lsspainattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsspainattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSPEEDY  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsspeedy'] = {
    name = 'weapon_lsspeedy',
    label = 'Speedy',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsspeedy.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSPRINGG19  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsspringg19'] = {
    name = 'weapon_lsspringg19',
    label = 'Springg19',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsspringg19.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSTARWAND  shape=wand  ox=none
QBShared.Items['weapon_lsstarwand'] = {
    name = 'weapon_lsstarwand',
    label = 'Starwand',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsstarwand.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSSTELLARSTRIKER  shape=wand  ox=none
QBShared.Items['weapon_lsstellarstriker'] = {
    name = 'weapon_lsstellarstriker',
    label = 'Stellarstriker',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_lsstellarstriker.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_LSSTICKERKELTEC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsstickerkeltec'] = {
    name = 'weapon_lsstickerkeltec',
    label = 'Lsstickerkeltec',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsstickerkeltec.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSTPAT2  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsstpat2'] = {
    name = 'weapon_lsstpat2',
    label = 'Stpat2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsstpat2.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSTPATC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsstpatc'] = {
    name = 'weapon_lsstpatc',
    label = 'Stpatc',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsstpatc.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSTPATG22  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsstpatg22'] = {
    name = 'weapon_lsstpatg22',
    label = 'Stpatg22',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsstpatg22.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSUMMERG20  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lssummerg20'] = {
    name = 'weapon_lssummerg20',
    label = 'Summerg20',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lssummerg20.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSSUPRI  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_lssupri'] = {
    name = 'weapon_lssupri',
    label = 'Supri',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_lssupri.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_LSTANTO  shape=pistol  ox=ammo-9
QBShared.Items['weapon_lstanto'] = {
    name = 'weapon_lstanto',
    label = 'Tanto',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lstanto.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSTOJI  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lstoji'] = {
    name = 'weapon_lstoji',
    label = 'Toji',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lstoji.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSUSAATTACH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsusaattach'] = {
    name = 'weapon_lsusaattach',
    label = 'Lsusaattach',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsusaattach.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSVAL1  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsval1'] = {
    name = 'weapon_lsval1',
    label = 'Val1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsval1.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSVAL2  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lsval2'] = {
    name = 'weapon_lsval2',
    label = 'Val2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lsval2.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LSWHITEBG  shape=pistol  ox=ammo-44
QBShared.Items['weapon_lswhitebg'] = {
    name = 'weapon_lswhitebg',
    label = 'Whitebg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_lswhitebg.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LUCKYAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_luckyap'] = {
    name = 'weapon_luckyap',
    label = 'Luckyap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_luckyap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_LVAK  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_lvak'] = {
    name = 'weapon_lvak',
    label = 'Lvak',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_lvak.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_M16NS  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_m16ns'] = {
    name = 'weapon_m16ns',
    label = 'M16ns',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_m16ns.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MA3  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_ma3'] = {
    name = 'weapon_ma3',
    label = 'Ma3',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_ma3.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MAC10  shape=smg  ox=ammo-9
QBShared.Items['weapon_mac10'] = {
    name = 'weapon_mac10',
    label = 'Mac10',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_mac10.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_MACHETE  shape=knife  ox=none
if QBShared.Items['weapon_machete'] == nil then
    QBShared.Items['weapon_machete'] = {
        name = 'weapon_machete',
        label = 'Machete',
        weight = 12000,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_machete.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_MACHETTE_RETROPIXEL  shape=knife  ox=none
QBShared.Items['weapon_machette_retropixel'] = {
    name = 'weapon_machette_retropixel',
    label = 'Machette Retropixel',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_machette_retropixel.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_MACHETTE_STARKILLER  shape=knife  ox=none
QBShared.Items['weapon_machette_starkiller'] = {
    name = 'weapon_machette_starkiller',
    label = 'Machette Starkiller',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_machette_starkiller.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_MACHINEPISTOL  shape=smg  ox=ammo-9
if QBShared.Items['weapon_machinepistol'] == nil then
    QBShared.Items['weapon_machinepistol'] = {
        name = 'weapon_machinepistol',
        label = 'Machine Pistol',
        weight = 1400,
        type = 'weapon',
        ammotype = 'AMMO_SMG',
        image = 'weapon_machinepistol.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_MACHINEPISTOL_GRAVEYARD  shape=smg  ox=ammo-9
QBShared.Items['weapon_machinepistol_graveyard'] = {
    name = 'weapon_machinepistol_graveyard',
    label = 'Machinepistol Graveyard',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_machinepistol_graveyard.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_MACHINEPISTOL_VORTEX  shape=smg  ox=ammo-9
QBShared.Items['weapon_machinepistol_vortex'] = {
    name = 'weapon_machinepistol_vortex',
    label = 'Machinepistol Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_machinepistol_vortex.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_MAGMAMR920P  shape=pistol  ox=ammo-44
QBShared.Items['weapon_magmamr920p'] = {
    name = 'weapon_magmamr920p',
    label = 'Magmamr920p',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_magmamr920p.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_MARKSMANPISTOL  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_marksmanpistol'] == nil then
    QBShared.Items['weapon_marksmanpistol'] = {
        name = 'weapon_marksmanpistol',
        label = 'Marksman Pistol',
        weight = 1588,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_marksmanpistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_MARKSMANRIFLE  shape=sniper  ox=ammo-sniper
if QBShared.Items['weapon_marksmanrifle'] == nil then
    QBShared.Items['weapon_marksmanrifle'] = {
        name = 'weapon_marksmanrifle',
        label = 'Marksman Rifle',
        weight = 7500,
        type = 'weapon',
        ammotype = 'AMMO_SNIPER',
        image = 'weapon_marksmanrifle.png',
        unique = true,
        useable = false,
        description = 'Sniper rifle.',
    }
end

-- WEAPON_MARKSMANRIFLE_MK2  shape=sniper  ox=ammo-sniper
if QBShared.Items['weapon_marksmanrifle_mk2'] == nil then
    QBShared.Items['weapon_marksmanrifle_mk2'] = {
        name = 'weapon_marksmanrifle_mk2',
        label = 'Marksman Rifle MK2',
        weight = 4000,
        type = 'weapon',
        ammotype = 'AMMO_SNIPER',
        image = 'weapon_marksmanrifle_mk2.png',
        unique = true,
        useable = false,
        description = 'Sniper rifle.',
    }
end

-- WEAPON_MASTER_SR47  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_master_sr47'] = {
    name = 'weapon_master_sr47',
    label = 'Master Sr47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_master_sr47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MCX  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_mcx'] = {
    name = 'weapon_mcx',
    label = 'Mcx',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_mcx.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MDAK47  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_mdak47'] = {
    name = 'weapon_mdak47',
    label = 'Mdak47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_mdak47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MDW_ARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_mdw_arp'] = {
    name = 'weapon_mdw_arp',
    label = 'Mdw Arp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_mdw_arp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MDW_BAT  shape=bat  ox=none
QBShared.Items['weapon_mdw_bat'] = {
    name = 'weapon_mdw_bat',
    label = 'Mdw Bat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_mdw_bat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_MDW_SR47  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_mdw_sr47'] = {
    name = 'weapon_mdw_sr47',
    label = 'Mdw Sr47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_mdw_sr47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MEALSTROMRR  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_mealstromrr'] = {
    name = 'weapon_mealstromrr',
    label = 'Mealstromrr',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_mealstromrr.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_MEALSTROMRRV2  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_mealstromrrv2'] = {
    name = 'weapon_mealstromrrv2',
    label = 'Mealstromrrv2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_mealstromrrv2.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_METALDETECTOR  shape=gadget  ox=none
if QBShared.Items['weapon_metaldetector'] == nil then
    QBShared.Items['weapon_metaldetector'] = {
        name = 'weapon_metaldetector',
        label = 'Metal Detector',
        weight = 1200,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_metaldetector.png',
        unique = true,
        useable = false,
        description = 'Utility weapon.',
    }
end

-- WEAPON_MFOURTHBAT  shape=bat  ox=none
QBShared.Items['weapon_mfourthbat'] = {
    name = 'weapon_mfourthbat',
    label = 'Mfourthbat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_mfourthbat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_MFOURTHISO  shape=smg  ox=ammo-9
QBShared.Items['weapon_mfourthiso'] = {
    name = 'weapon_mfourthiso',
    label = 'Mfourthiso',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_mfourthiso.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_MFOURTHWIRE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_mfourthwire'] = {
    name = 'weapon_mfourthwire',
    label = 'Mfourthwire',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_mfourthwire.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_MG  shape=mg  ox=ammo-rifle
if QBShared.Items['weapon_mg'] == nil then
    QBShared.Items['weapon_mg'] = {
        name = 'weapon_mg',
        label = 'Machine Gun',
        weight = 9000,
        type = 'weapon',
        ammotype = 'AMMO_MG',
        image = 'weapon_mg.png',
        unique = true,
        useable = false,
        description = 'Machine gun.',
    }
end

-- WEAPON_MICROSMG  shape=smg  ox=ammo-9
if QBShared.Items['weapon_microsmg'] == nil then
    QBShared.Items['weapon_microsmg'] = {
        name = 'weapon_microsmg',
        label = 'Micro SMG',
        weight = 3000,
        type = 'weapon',
        ammotype = 'AMMO_SMG',
        image = 'weapon_microsmg.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_MICROSMG_DARKMATTER  shape=smg  ox=ammo-9
QBShared.Items['weapon_microsmg_darkmatter'] = {
    name = 'weapon_microsmg_darkmatter',
    label = 'Microsmg Darkmatter',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_microsmg_darkmatter.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_MICROSMG_IRONDUST  shape=smg  ox=ammo-9
QBShared.Items['weapon_microsmg_irondust'] = {
    name = 'weapon_microsmg_irondust',
    label = 'Microsmg Irondust',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_microsmg_irondust.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_MIKEMYERSAKV1BYDAIE  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_mikemyersakv1bydaie'] = {
    name = 'weapon_mikemyersakv1bydaie',
    label = 'Mike Myers AK v1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_mikemyersakv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MIKEMYERSSWITCHV1BYDAIE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_mikemyersswitchv1bydaie'] = {
    name = 'weapon_mikemyersswitchv1bydaie',
    label = 'Mike Myers Glock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_mikemyersswitchv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_MILITARYRIFLE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_militaryrifle'] == nil then
    QBShared.Items['weapon_militaryrifle'] = {
        name = 'weapon_militaryrifle',
        label = 'Military Rifle',
        weight = 3600,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_militaryrifle.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_MINIGUN  shape=minigun  ox=ammo-rifle
if QBShared.Items['weapon_minigun'] == nil then
    QBShared.Items['weapon_minigun'] = {
        name = 'weapon_minigun',
        label = 'Minigun',
        weight = 38500,
        type = 'weapon',
        ammotype = 'AMMO_MINIGUN',
        image = 'weapon_minigun.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_MINISMG  shape=smg  ox=ammo-9
if QBShared.Items['weapon_minismg'] == nil then
    QBShared.Items['weapon_minismg'] = {
        name = 'weapon_minismg',
        label = 'Mini SMG',
        weight = 1270,
        type = 'weapon',
        ammotype = 'AMMO_SMG',
        image = 'weapon_minismg.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_MK2_HALLOWEEN  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_mk2_halloween'] = {
    name = 'weapon_mk2_halloween',
    label = 'Halloween MK2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_mk2_halloween.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MM1  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_mm1'] = {
    name = 'weapon_mm1',
    label = 'Mm1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_mm1.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_MM10  shape=sniper  ox=ammo-sniper
QBShared.Items['weapon_mm10'] = {
    name = 'weapon_mm10',
    label = 'Mm10',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SNIPER',
    image = 'weapon_mm10.png',
    unique = true,
    useable = false,
    description = 'Sniper rifle.',
}

-- WEAPON_MM2  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_mm2'] = {
    name = 'weapon_mm2',
    label = 'Mm2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_mm2.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_MM3  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_mm3'] = {
    name = 'weapon_mm3',
    label = 'Mm3',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_mm3.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_MM4  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_mm4'] = {
    name = 'weapon_mm4',
    label = 'Mm4',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_mm4.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_MM5  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_mm5'] = {
    name = 'weapon_mm5',
    label = 'Mm5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_mm5.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_MM6  shape=sniper  ox=ammo-sniper
QBShared.Items['weapon_mm6'] = {
    name = 'weapon_mm6',
    label = 'Mm6',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SNIPER',
    image = 'weapon_mm6.png',
    unique = true,
    useable = false,
    description = 'Sniper rifle.',
}

-- WEAPON_MM7  shape=sniper  ox=ammo-sniper
QBShared.Items['weapon_mm7'] = {
    name = 'weapon_mm7',
    label = 'Mm7',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SNIPER',
    image = 'weapon_mm7.png',
    unique = true,
    useable = false,
    description = 'Sniper rifle.',
}

-- WEAPON_MM8  shape=sniper  ox=ammo-sniper
QBShared.Items['weapon_mm8'] = {
    name = 'weapon_mm8',
    label = 'Mm8',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SNIPER',
    image = 'weapon_mm8.png',
    unique = true,
    useable = false,
    description = 'Sniper rifle.',
}

-- WEAPON_MM9  shape=sniper  ox=ammo-sniper
QBShared.Items['weapon_mm9'] = {
    name = 'weapon_mm9',
    label = 'Mm9',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SNIPER',
    image = 'weapon_mm9.png',
    unique = true,
    useable = false,
    description = 'Sniper rifle.',
}

-- WEAPON_MOLOTOV  shape=molotov  ox=none
if QBShared.Items['weapon_molotov'] == nil then
    QBShared.Items['weapon_molotov'] = {
        name = 'weapon_molotov',
        label = 'Molotov',
        weight = 1800,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_molotov.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_MOTION  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_motion'] = {
    name = 'weapon_motion',
    label = 'Motion',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_motion.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_MPA10  shape=smg  ox=ammo-9
QBShared.Items['weapon_mpa10'] = {
    name = 'weapon_mpa10',
    label = 'Mpa10',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_mpa10.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_MPC  shape=pistol  ox=ammo-9
QBShared.Items['weapon_mpc'] = {
    name = 'weapon_mpc',
    label = 'Mpc',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_mpc.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_MUSKET  shape=musket  ox=ammo-musket
if QBShared.Items['weapon_musket'] == nil then
    QBShared.Items['weapon_musket'] = {
        name = 'weapon_musket',
        label = 'Musket',
        weight = 4500,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_musket.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_NAVYREVOLVER  shape=revolver  ox=ammo-44
if QBShared.Items['weapon_navyrevolver'] == nil then
    QBShared.Items['weapon_navyrevolver'] = {
        name = 'weapon_navyrevolver',
        label = 'Navy Revolver',
        weight = 4000,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_navyrevolver.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_NIGHTSTICK  shape=baton  ox=none
if QBShared.Items['weapon_nightstick'] == nil then
    QBShared.Items['weapon_nightstick'] = {
        name = 'weapon_nightstick',
        label = 'Nightstick',
        weight = 12000,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_nightstick.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_ORANGELIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_orangelightsaber'] = {
    name = 'weapon_orangelightsaber',
    label = 'Orangelightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_orangelightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_ORANGEREAPER  shape=pistol  ox=ammo-44
QBShared.Items['weapon_orangereaper'] = {
    name = 'weapon_orangereaper',
    label = 'Orangereaper',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_orangereaper.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_OVOFROSTG26  shape=pistol  ox=ammo-9
QBShared.Items['weapon_ovofrostg26'] = {
    name = 'weapon_ovofrostg26',
    label = 'Ovofrostg26',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_ovofrostg26.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_OVOLIGHTSGX16  shape=pistol  ox=ammo-9
QBShared.Items['weapon_ovolightsgx16'] = {
    name = 'weapon_ovolightsgx16',
    label = 'Ovolightsgx16',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_ovolightsgx16.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_OVOMINIAXE  shape=axe  ox=none
QBShared.Items['weapon_ovominiaxe'] = {
    name = 'weapon_ovominiaxe',
    label = 'Ovominiaxe',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_ovominiaxe.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_P88P  shape=pistol  ox=ammo-44
QBShared.Items['weapon_p88p'] = {
    name = 'weapon_p88p',
    label = 'P88p',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_p88p.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_P890  shape=pistol  ox=ammo-44
QBShared.Items['weapon_p890'] = {
    name = 'weapon_p890',
    label = 'P890',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_p890.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PALMTREE  shape=palm  ox=none
QBShared.Items['weapon_palmtree'] = {
    name = 'weapon_palmtree',
    label = 'Palmtree',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_palmtree.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PBAT  shape=bat  ox=none
QBShared.Items['weapon_pbat'] = {
    name = 'weapon_pbat',
    label = 'Pbat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_pbat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PC  shape=bat  ox=none
QBShared.Items['weapon_pc'] = {
    name = 'weapon_pc',
    label = 'Pc',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_pc.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PDBATON  shape=baton  ox=none
QBShared.Items['weapon_pdbaton'] = {
    name = 'weapon_pdbaton',
    label = 'Pdbaton',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_pdbaton.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PDBR5  shape=shotgun  ox=pd-shotgun
QBShared.Items['weapon_pdbr5'] = {
    name = 'weapon_pdbr5',
    label = 'Pdbr5',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_pdbr5.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_PDHK416  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_pdhk416'] = {
    name = 'weapon_pdhk416',
    label = 'Pdhk416',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_pdhk416.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PDPT700  shape=sniper  ox=pd-sniper
QBShared.Items['weapon_pdpt700'] = {
    name = 'weapon_pdpt700',
    label = 'Pdpt700',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SNIPER',
    image = 'weapon_pdpt700.png',
    unique = true,
    useable = false,
    description = 'Sniper rifle.',
}

-- WEAPON_PDPT870  shape=shotgun  ox=pd-shotgun
QBShared.Items['weapon_pdpt870'] = {
    name = 'weapon_pdpt870',
    label = 'Pdpt870',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_pdpt870.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_PENCIL  shape=pencil  ox=none
QBShared.Items['weapon_pencil'] = {
    name = 'weapon_pencil',
    label = 'Pencil',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_pencil.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PENNYWISEAKV1BYDAIE  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_pennywiseakv1bydaie'] = {
    name = 'weapon_pennywiseakv1bydaie',
    label = 'Pennywise AK v1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_pennywiseakv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PETROLCAN  shape=jerrycan  ox=none
if QBShared.Items['weapon_petrolcan'] == nil then
    QBShared.Items['weapon_petrolcan'] = {
        name = 'weapon_petrolcan',
        label = 'Jerry Can',
        weight = 4000,
        type = 'weapon',
        ammotype = 'AMMO_PETROLCAN',
        image = 'weapon_petrolcan.png',
        unique = true,
        useable = false,
        description = 'Utility weapon.',
    }
end

-- WEAPON_PHANTOMAR  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_phantomar'] = {
    name = 'weapon_phantomar',
    label = 'Phantomar',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_phantomar.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PIMHALLOWEEN2026  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pimhalloween2026'] = {
    name = 'weapon_pimhalloween2026',
    label = 'PIM Halloween',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pimhalloween2026.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PINKDIAMONDDEGALE  shape=deagle  ox=ammo-44
QBShared.Items['weapon_pinkdiamonddegale'] = {
    name = 'weapon_pinkdiamonddegale',
    label = 'Pinkdiamonddegale',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pinkdiamonddegale.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PINKDIAMONDG26  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pinkdiamondg26'] = {
    name = 'weapon_pinkdiamondg26',
    label = 'Pinkdiamondg26',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pinkdiamondg26.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PINKFLAME680  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_pinkflame680'] = {
    name = 'weapon_pinkflame680',
    label = 'Pinkflame680',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_pinkflame680.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_PINKGLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pinkglock'] = {
    name = 'weapon_pinkglock',
    label = 'Pinkglock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pinkglock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PINKKATANA  shape=katana  ox=none
QBShared.Items['weapon_pinkkatana'] = {
    name = 'weapon_pinkkatana',
    label = 'Pinkkatana',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_pinkkatana.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PINKLIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_pinklightsaber'] = {
    name = 'weapon_pinklightsaber',
    label = 'Pinklightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_pinklightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PINKREAPER  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pinkreaper'] = {
    name = 'weapon_pinkreaper',
    label = 'Pinkreaper',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pinkreaper.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PINKWIRE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pinkwire'] = {
    name = 'weapon_pinkwire',
    label = 'Pinkwire',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pinkwire.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PINKWIRESMG  shape=smg  ox=ammo-9
QBShared.Items['weapon_pinkwiresmg'] = {
    name = 'weapon_pinkwiresmg',
    label = 'Pinkwiresmg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_pinkwiresmg.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_PIPEBOMB  shape=pipebomb  ox=none
if QBShared.Items['weapon_pipebomb'] == nil then
    QBShared.Items['weapon_pipebomb'] = {
        name = 'weapon_pipebomb',
        label = 'Pipe Bomb',
        weight = 1800,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_pipebomb.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_PISTOL  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_pistol'] == nil then
    QBShared.Items['weapon_pistol'] = {
        name = 'weapon_pistol',
        label = 'Pistol',
        weight = 1130,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_pistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_PISTOL50  shape=deagle  ox=ammo-44
if QBShared.Items['weapon_pistol50'] == nil then
    QBShared.Items['weapon_pistol50'] = {
        name = 'weapon_pistol50',
        label = 'Pistol .50',
        weight = 2000,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_pistol50.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_PISTOL50_KAWAI  shape=deagle  ox=ammo-44
QBShared.Items['weapon_pistol50_kawai'] = {
    name = 'weapon_pistol50_kawai',
    label = 'Pistol50 Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pistol50_kawai.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PISTOL50_VORTEX  shape=deagle  ox=ammo-44
QBShared.Items['weapon_pistol50_vortex'] = {
    name = 'weapon_pistol50_vortex',
    label = 'Pistol50 Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pistol50_vortex.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PISTOL_KAWAI  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pistol_kawai'] = {
    name = 'weapon_pistol_kawai',
    label = 'Pistol Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pistol_kawai.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PISTOL_MK2  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_pistol_mk2'] == nil then
    QBShared.Items['weapon_pistol_mk2'] = {
        name = 'weapon_pistol_mk2',
        label = 'Pistol MK2',
        weight = 12000,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_pistol_mk2.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_PISTOL_MK2_IRONDUST  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pistol_mk2_irondust'] = {
    name = 'weapon_pistol_mk2_irondust',
    label = 'Pistol Mk2 Irondust',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pistol_mk2_irondust.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PISTOL_STEAMPUNK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pistol_steampunk'] = {
    name = 'weapon_pistol_steampunk',
    label = 'Pistol Steampunk',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pistol_steampunk.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PISTOLMK2_KAWAI  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pistolmk2_kawai'] = {
    name = 'weapon_pistolmk2_kawai',
    label = 'Pistolmk2 Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pistolmk2_kawai.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PISTOLMK2_VORTEX  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pistolmk2_vortex'] = {
    name = 'weapon_pistolmk2_vortex',
    label = 'Pistolmk2 Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pistolmk2_vortex.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PISTOLXM3  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_pistolxm3'] == nil then
    QBShared.Items['weapon_pistolxm3'] = {
        name = 'weapon_pistolxm3',
        label = 'WM 29 Pistol',
        weight = 969,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_pistolxm3.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_POOLCUE  shape=pool  ox=none
if QBShared.Items['weapon_poolcue'] == nil then
    QBShared.Items['weapon_poolcue'] = {
        name = 'weapon_poolcue',
        label = 'Pool Cue',
        weight = 146,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_poolcue.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_PORTALPURPLE  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_portalpurple'] = {
    name = 'weapon_portalpurple',
    label = 'Portalpurple',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_portalpurple.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PPGIRLSSWITCHV1BYDAIE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_ppgirlsswitchv1bydaie'] = {
    name = 'weapon_ppgirlsswitchv1bydaie',
    label = 'PP Girls Glock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_ppgirlsswitchv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PRECISIONRIFLE  shape=sniper  ox=ammo-sniper
if QBShared.Items['weapon_precisionrifle'] == nil then
    QBShared.Items['weapon_precisionrifle'] = {
        name = 'weapon_precisionrifle',
        label = 'Precision Rifle',
        weight = 4800,
        type = 'weapon',
        ammotype = 'AMMO_SNIPER',
        image = 'weapon_precisionrifle.png',
        unique = true,
        useable = false,
        description = 'Sniper rifle.',
    }
end

-- WEAPON_PRISMATICAK47  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_prismaticak47'] = {
    name = 'weapon_prismaticak47',
    label = 'Prismaticak47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_prismaticak47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PRISMATICBAL27  shape=ar  ox=ammo-9
QBShared.Items['weapon_prismaticbal27'] = {
    name = 'weapon_prismaticbal27',
    label = 'Prismaticbal27',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_prismaticbal27.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PRISMATICDRACO  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_prismaticdraco'] = {
    name = 'weapon_prismaticdraco',
    label = 'Prismaticdraco',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_prismaticdraco.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PRISMATICFNX45  shape=pistol  ox=ammo-44
QBShared.Items['weapon_prismaticfnx45'] = {
    name = 'weapon_prismaticfnx45',
    label = 'Prismaticfnx45',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_prismaticfnx45.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PRISMATICL85A2  shape=ar  ox=ammo-9
QBShared.Items['weapon_prismaticl85a2'] = {
    name = 'weapon_prismaticl85a2',
    label = 'Prismaticl85a2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_prismaticl85a2.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PRISMATICM400  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_prismaticm400'] = {
    name = 'weapon_prismaticm400',
    label = 'Prismaticm400',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_prismaticm400.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PRISMATICMP7A2  shape=smg  ox=ammo-9
QBShared.Items['weapon_prismaticmp7a2'] = {
    name = 'weapon_prismaticmp7a2',
    label = 'Prismaticmp7a2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_prismaticmp7a2.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_PRISMATICMXC  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_prismaticmxc'] = {
    name = 'weapon_prismaticmxc',
    label = 'Prismaticmxc',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_prismaticmxc.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PRISMATICP80  shape=pistol  ox=ammo-44
QBShared.Items['weapon_prismaticp80'] = {
    name = 'weapon_prismaticp80',
    label = 'Prismaticp80',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_prismaticp80.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PRISMATICPLR  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_prismaticplr'] = {
    name = 'weapon_prismaticplr',
    label = 'Prismaticplr',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_prismaticplr.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PRISMATICSBRARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_prismaticsbrarp'] = {
    name = 'weapon_prismaticsbrarp',
    label = 'Prismaticsbrarp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_prismaticsbrarp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_PRISOMAPPISTOL  shape=pistol  ox=ammo-44
QBShared.Items['weapon_prisomappistol'] = {
    name = 'weapon_prisomappistol',
    label = 'Prisomappistol',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_prisomappistol.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PROXMINE  shape=mine  ox=none
if QBShared.Items['weapon_proxmine'] == nil then
    QBShared.Items['weapon_proxmine'] = {
        name = 'weapon_proxmine',
        label = 'Proximity Mine',
        weight = 2500,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_proxmine.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_PSKELE  shape=bone  ox=none
QBShared.Items['weapon_pskele'] = {
    name = 'weapon_pskele',
    label = 'Pskele',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_pskele.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PUMPSHOTGUN  shape=shotgun  ox=ammo-shotgun
if QBShared.Items['weapon_pumpshotgun'] == nil then
    QBShared.Items['weapon_pumpshotgun'] = {
        name = 'weapon_pumpshotgun',
        label = 'Pump Shotgun',
        weight = 3400,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_pumpshotgun.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_PUMPSHOTGUN_MK2  shape=shotgun  ox=ammo-shotgun
if QBShared.Items['weapon_pumpshotgun_mk2'] == nil then
    QBShared.Items['weapon_pumpshotgun_mk2'] = {
        name = 'weapon_pumpshotgun_mk2',
        label = 'Pump Shotgun MK2',
        weight = 3200,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_pumpshotgun_mk2.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_PURPLEKATANA  shape=katana  ox=none
QBShared.Items['weapon_purplekatana'] = {
    name = 'weapon_purplekatana',
    label = 'Purplekatana',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_purplekatana.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PURPLELIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_purplelightsaber'] = {
    name = 'weapon_purplelightsaber',
    label = 'Purplelightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_purplelightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PURPLEONE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_purpleone'] = {
    name = 'weapon_purpleone',
    label = 'Purpleone',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_purpleone.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PURPLEREAPER  shape=pistol  ox=ammo-44
QBShared.Items['weapon_purplereaper'] = {
    name = 'weapon_purplereaper',
    label = 'Purplereaper',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_purplereaper.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PURPLESEXT  shape=baton  ox=none
QBShared.Items['weapon_purplesext'] = {
    name = 'weapon_purplesext',
    label = 'Purplesext',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_purplesext.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_PV2011  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pv2011'] = {
    name = 'weapon_pv2011',
    label = 'Pv2011',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pv2011.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_PVB2011  shape=pistol  ox=ammo-44
QBShared.Items['weapon_pvb2011'] = {
    name = 'weapon_pvb2011',
    label = 'Pvb2011',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_pvb2011.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_RAILGUN  shape=railgun  ox=ammo-railgun
if QBShared.Items['weapon_railgun'] == nil then
    QBShared.Items['weapon_railgun'] = {
        name = 'weapon_railgun',
        label = 'Railgun',
        weight = 3570,
        type = 'weapon',
        ammotype = 'AMMO_RAILGUN',
        image = 'weapon_railgun.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_RAILGUNXM3  shape=railgun  ox=ammo-railgun
if QBShared.Items['weapon_railgunxm3'] == nil then
    QBShared.Items['weapon_railgunxm3'] = {
        name = 'weapon_railgunxm3',
        label = 'Railgun XM3',
        weight = 3570,
        type = 'weapon',
        ammotype = 'AMMO_RAILGUN',
        image = 'weapon_railgunxm3.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_RAINBOWSMASH  shape=hammer  ox=none
QBShared.Items['weapon_rainbowsmash'] = {
    name = 'weapon_rainbowsmash',
    label = 'Rainbowsmash',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_rainbowsmash.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_RAQSSEMI  shape=pistol  ox=ammo-44
QBShared.Items['weapon_raqssemi'] = {
    name = 'weapon_raqssemi',
    label = 'Raqssemi',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_raqssemi.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_RAQSWITCHY  shape=pistol  ox=ammo-44
QBShared.Items['weapon_raqswitchy'] = {
    name = 'weapon_raqswitchy',
    label = 'Raqswitchy',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_raqswitchy.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_RAYCARBINE  shape=raycarbine  ox=ammo-rifle
if QBShared.Items['weapon_raycarbine'] == nil then
    QBShared.Items['weapon_raycarbine'] = {
        name = 'weapon_raycarbine',
        label = 'Unholy Hellbringer',
        weight = 3620,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_raycarbine.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_RAYMINIGUN  shape=minigun  ox=ammo-laser
if QBShared.Items['weapon_rayminigun'] == nil then
    QBShared.Items['weapon_rayminigun'] = {
        name = 'weapon_rayminigun',
        label = 'Widowmaker',
        weight = 7000,
        type = 'weapon',
        ammotype = 'AMMO_MINIGUN',
        image = 'weapon_rayminigun.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_RAYPISTOL  shape=raypistol  ox=none
if QBShared.Items['weapon_raypistol'] == nil then
    QBShared.Items['weapon_raypistol'] = {
        name = 'weapon_raypistol',
        label = 'Up-n-Atomizer',
        weight = 1540,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_raypistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_RBDIAMOND  shape=pistol  ox=ammo-44
QBShared.Items['weapon_rbdiamond'] = {
    name = 'weapon_rbdiamond',
    label = 'Rbdiamond',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_rbdiamond.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_REALBREAD  shape=bread  ox=none
QBShared.Items['weapon_realbread'] = {
    name = 'weapon_realbread',
    label = 'Realbread',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_realbread.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_REAPER  shape=pistol  ox=ammo-44
QBShared.Items['weapon_reaper'] = {
    name = 'weapon_reaper',
    label = 'Reaper',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_reaper.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_REDARPWSTRAP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_redarpwstrap'] = {
    name = 'weapon_redarpwstrap',
    label = 'Redarpwstrap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_redarpwstrap.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_REDKATANA  shape=katana  ox=none
QBShared.Items['weapon_redkatana'] = {
    name = 'weapon_redkatana',
    label = 'Redkatana',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_redkatana.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_REDLIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_redlightsaber'] = {
    name = 'weapon_redlightsaber',
    label = 'Redlightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_redlightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_REVOLVER  shape=revolver  ox=ammo-44
if QBShared.Items['weapon_revolver'] == nil then
    QBShared.Items['weapon_revolver'] = {
        name = 'weapon_revolver',
        label = 'Revolver',
        weight = 2260,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_revolver.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_REVOLVER_MK2  shape=revolver  ox=ammo-44
if QBShared.Items['weapon_revolver_mk2'] == nil then
    QBShared.Items['weapon_revolver_mk2'] = {
        name = 'weapon_revolver_mk2',
        label = 'Revolver MK2',
        weight = 2600,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_revolver_mk2.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_REVOLVER_MK2_DARKMATTER  shape=revolver  ox=ammo-44
QBShared.Items['weapon_revolver_mk2_darkmatter'] = {
    name = 'weapon_revolver_mk2_darkmatter',
    label = 'Revolver Mk2 Darkmatter',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_revolver_mk2_darkmatter.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_REVOLVER_MK2_STARKILLER  shape=revolver  ox=ammo-44
QBShared.Items['weapon_revolver_mk2_starkiller'] = {
    name = 'weapon_revolver_mk2_starkiller',
    label = 'Revolver Mk2 Starkiller',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_revolver_mk2_starkiller.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_RGXVANDAL  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_rgxvandal'] = {
    name = 'weapon_rgxvandal',
    label = 'Rgxvandal',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_rgxvandal.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_ROPEARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_ropearp'] = {
    name = 'weapon_ropearp',
    label = 'Ropearp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_ropearp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_ROSEBAT  shape=bat  ox=none
QBShared.Items['weapon_rosebat'] = {
    name = 'weapon_rosebat',
    label = 'Rosebat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_rosebat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_ROSEGOLDDRACO  shape=draco  ox=ammo-rifle
QBShared.Items['weapon_rosegolddraco'] = {
    name = 'weapon_rosegolddraco',
    label = 'Rosegolddraco',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_rosegolddraco.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_RPG  shape=rpg  ox=ammo-rocket
if QBShared.Items['weapon_rpg'] == nil then
    QBShared.Items['weapon_rpg'] = {
        name = 'weapon_rpg',
        label = 'RPG',
        weight = 5000,
        type = 'weapon',
        ammotype = 'AMMO_RPG',
        image = 'weapon_rpg.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_RSEXT  shape=baton  ox=none
QBShared.Items['weapon_rsext'] = {
    name = 'weapon_rsext',
    label = 'Rsext',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_rsext.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_SAIGA9  shape=shotgun  ox=ammo-shotgun
QBShared.Items['weapon_saiga9'] = {
    name = 'weapon_saiga9',
    label = 'Saiga9',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SHOTGUN',
    image = 'weapon_saiga9.png',
    unique = true,
    useable = false,
    description = 'Shotgun.',
}

-- WEAPON_SAUGMD  shape=ar  ox=ammo-9
QBShared.Items['weapon_saugmd'] = {
    name = 'weapon_saugmd',
    label = 'Saugmd',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_saugmd.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SAUGMDV2  shape=ar  ox=ammo-9
QBShared.Items['weapon_saugmdv2'] = {
    name = 'weapon_saugmdv2',
    label = 'Saugmdv2',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_saugmdv2.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SAWAKV1BYDAIE  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_sawakv1bydaie'] = {
    name = 'weapon_sawakv1bydaie',
    label = 'Saw AK v1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_sawakv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SAWNOFFSHOTGUN  shape=sawnoff  ox=ammo-shotgun
if QBShared.Items['weapon_sawnoffshotgun'] == nil then
    QBShared.Items['weapon_sawnoffshotgun'] = {
        name = 'weapon_sawnoffshotgun',
        label = 'Sawn Off Shotgun',
        weight = 2380,
        type = 'weapon',
        ammotype = 'AMMO_SHOTGUN',
        image = 'weapon_sawnoffshotgun.png',
        unique = true,
        useable = false,
        description = 'Shotgun.',
    }
end

-- WEAPON_SBRARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_sbrarp'] = {
    name = 'weapon_sbrarp',
    label = 'Sbrarp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_sbrarp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SCORP_HALLOWEEN  shape=smg  ox=ammo-9
QBShared.Items['weapon_scorp_halloween'] = {
    name = 'weapon_scorp_halloween',
    label = 'Halloween Scorpion',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_scorp_halloween.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_SHARACG  shape=ar  ox=ammo-44
QBShared.Items['weapon_sharacg'] = {
    name = 'weapon_sharacg',
    label = 'Sharacg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_sharacg.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SHARACG20  shape=ar  ox=ammo-44
QBShared.Items['weapon_sharacg20'] = {
    name = 'weapon_sharacg20',
    label = 'Sharacg20',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_sharacg20.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SHARAG17C  shape=pistol  ox=ammo-44
QBShared.Items['weapon_sharag17c'] = {
    name = 'weapon_sharag17c',
    label = 'Sharag17c',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_sharag17c.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_SHARKMACHINEPISTOL  shape=smg  ox=ammo-9
QBShared.Items['weapon_sharkmachinepistol'] = {
    name = 'weapon_sharkmachinepistol',
    label = 'Sharkmachinepistol',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_sharkmachinepistol.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_SINISTERPURP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_sinisterpurp'] = {
    name = 'weapon_sinisterpurp',
    label = 'Sinisterpurp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_sinisterpurp.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_SINISTERRED  shape=pistol  ox=ammo-44
QBShared.Items['weapon_sinisterred'] = {
    name = 'weapon_sinisterred',
    label = 'Sinisterred',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_sinisterred.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_SLURPAXE  shape=axe  ox=none
QBShared.Items['weapon_slurpaxe'] = {
    name = 'weapon_slurpaxe',
    label = 'Slurpaxe',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_slurpaxe.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_SMG  shape=smg  ox=ammo-9
if QBShared.Items['weapon_smg'] == nil then
    QBShared.Items['weapon_smg'] = {
        name = 'weapon_smg',
        label = 'SMG',
        weight = 3084,
        type = 'weapon',
        ammotype = 'AMMO_SMG',
        image = 'weapon_smg.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_SMG_MK2  shape=smg  ox=ammo-9
if QBShared.Items['weapon_smg_mk2'] == nil then
    QBShared.Items['weapon_smg_mk2'] = {
        name = 'weapon_smg_mk2',
        label = 'SMG Mk2',
        weight = 2700,
        type = 'weapon',
        ammotype = 'AMMO_SMG',
        image = 'weapon_smg_mk2.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_SMG_STARKILLER  shape=smg  ox=ammo-9
QBShared.Items['weapon_smg_starkiller'] = {
    name = 'weapon_smg_starkiller',
    label = 'Smg Starkiller',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_smg_starkiller.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_SMG_STEAMPUNK  shape=smg  ox=ammo-9
QBShared.Items['weapon_smg_steampunk'] = {
    name = 'weapon_smg_steampunk',
    label = 'Smg Steampunk',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_smg_steampunk.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_SMOKEGRENADE  shape=gas  ox=none
if QBShared.Items['weapon_smokegrenade'] == nil then
    QBShared.Items['weapon_smokegrenade'] = {
        name = 'weapon_smokegrenade',
        label = 'Smoke Grenade',
        weight = 600,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_smokegrenade.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_SNIPERRIFLE  shape=sniper  ox=ammo-sniper
if QBShared.Items['weapon_sniperrifle'] == nil then
    QBShared.Items['weapon_sniperrifle'] = {
        name = 'weapon_sniperrifle',
        label = 'Sniper Rifle',
        weight = 5000,
        type = 'weapon',
        ammotype = 'AMMO_SNIPER',
        image = 'weapon_sniperrifle.png',
        unique = true,
        useable = false,
        description = 'Sniper rifle.',
    }
end

-- WEAPON_SNOWBALL  shape=snowball  ox=none
if QBShared.Items['weapon_snowball'] == nil then
    QBShared.Items['weapon_snowball'] = {
        name = 'weapon_snowball',
        label = 'Snow Ball',
        weight = 5,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_snowball.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_SNOWLAUNCHER  shape=launcher  ox=WEAPON_SNOWBALL
if QBShared.Items['weapon_snowlauncher'] == nil then
    QBShared.Items['weapon_snowlauncher'] = {
        name = 'weapon_snowlauncher',
        label = 'Snowball Launcher',
        weight = 12000,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_snowlauncher.png',
        unique = true,
        useable = false,
        description = 'Heavy weapon.',
    }
end

-- WEAPON_SNSPISTOL  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_snspistol'] == nil then
    QBShared.Items['weapon_snspistol'] = {
        name = 'weapon_snspistol',
        label = 'SNS Pistol',
        weight = 465,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_snspistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_SNSPISTOL_MK2  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_snspistol_mk2'] == nil then
    QBShared.Items['weapon_snspistol_mk2'] = {
        name = 'weapon_snspistol_mk2',
        label = 'SNS Pistol MK2',
        weight = 465,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_snspistol_mk2.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_SP320  shape=pistol  ox=ammo-44
QBShared.Items['weapon_sp320'] = {
    name = 'weapon_sp320',
    label = 'Sp320',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_sp320.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_SPECIALCARBINE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_specialcarbine'] == nil then
    QBShared.Items['weapon_specialcarbine'] = {
        name = 'weapon_specialcarbine',
        label = 'Special Carbine',
        weight = 3000,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_specialcarbine.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_SPECIALCARBINE_MK2  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_specialcarbine_mk2'] == nil then
    QBShared.Items['weapon_specialcarbine_mk2'] = {
        name = 'weapon_specialcarbine_mk2',
        label = 'Special Carbine MK2',
        weight = 3370,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_specialcarbine_mk2.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_SPECIALCARBINE_MK2_DARKMATTER  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_specialcarbine_mk2_darkmatter'] = {
    name = 'weapon_specialcarbine_mk2_darkmatter',
    label = 'Specialcarbine Mk2 Darkmatter',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_specialcarbine_mk2_darkmatter.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SPECIALCARBINE_MK2_GRAVEYARD  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_specialcarbine_mk2_graveyard'] = {
    name = 'weapon_specialcarbine_mk2_graveyard',
    label = 'Specialcarbine Mk2 Graveyard',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_specialcarbine_mk2_graveyard.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SPECIALCARBINE_MK2_IRONDUST  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_specialcarbine_mk2_irondust'] = {
    name = 'weapon_specialcarbine_mk2_irondust',
    label = 'Specialcarbine Mk2 Irondust',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_specialcarbine_mk2_irondust.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SPECIALCARBINE_MK2_KAWAI  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_specialcarbine_mk2_kawai'] = {
    name = 'weapon_specialcarbine_mk2_kawai',
    label = 'Specialcarbine Mk2 Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_specialcarbine_mk2_kawai.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SPECIALCARBINE_MK2_RETROPIXEL  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_specialcarbine_mk2_retropixel'] = {
    name = 'weapon_specialcarbine_mk2_retropixel',
    label = 'Specialcarbine Mk2 Retropixel',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_specialcarbine_mk2_retropixel.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SPECIALCARBINE_MK2_STARKILLER  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_specialcarbine_mk2_starkiller'] = {
    name = 'weapon_specialcarbine_mk2_starkiller',
    label = 'Specialcarbine Mk2 Starkiller',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_specialcarbine_mk2_starkiller.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SPECIALCARBINE_MK2_STEAMPUNK  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_specialcarbine_mk2_steampunk'] = {
    name = 'weapon_specialcarbine_mk2_steampunk',
    label = 'Specialcarbine Mk2 Steampunk',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_specialcarbine_mk2_steampunk.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SPECIALCARBINE_MK2_VORTEX  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_specialcarbine_mk2_vortex'] = {
    name = 'weapon_specialcarbine_mk2_vortex',
    label = 'Specialcarbine Mk2 Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_specialcarbine_mk2_vortex.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SPECIALFNX45  shape=pistol  ox=ammo-44
QBShared.Items['weapon_specialfnx45'] = {
    name = 'weapon_specialfnx45',
    label = 'Specialfnx45',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_specialfnx45.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_SPECIALGLOCK21  shape=pistol  ox=ammo-44
QBShared.Items['weapon_specialglock21'] = {
    name = 'weapon_specialglock21',
    label = 'Specialglock21',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_specialglock21.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_SPECIALGLOCK30  shape=pistol  ox=ammo-44
QBShared.Items['weapon_specialglock30'] = {
    name = 'weapon_specialglock30',
    label = 'Specialglock30',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_specialglock30.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_SPECTRESMG  shape=smg  ox=ammo-9
QBShared.Items['weapon_spectresmg'] = {
    name = 'weapon_spectresmg',
    label = 'Spectresmg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_spectresmg.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_SPIDERAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_spiderap'] = {
    name = 'weapon_spiderap',
    label = 'Spiderap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_spiderap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_STICKYBOMB  shape=sticky  ox=none
if QBShared.Items['weapon_stickybomb'] == nil then
    QBShared.Items['weapon_stickybomb'] = {
        name = 'weapon_stickybomb',
        label = 'Sticky Bomb',
        weight = 12000,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_stickybomb.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_STONE_HATCHET  shape=axe  ox=none
if QBShared.Items['weapon_stone_hatchet'] == nil then
    QBShared.Items['weapon_stone_hatchet'] = {
        name = 'weapon_stone_hatchet',
        label = 'Stone Hatchet',
        weight = 800,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_stone_hatchet.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_STRIKERG17  shape=pistol  ox=ammo-44
QBShared.Items['weapon_strikerg17'] = {
    name = 'weapon_strikerg17',
    label = 'Strikerg17',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_strikerg17.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_STUNGUN  shape=taser  ox=none
if QBShared.Items['weapon_stungun'] == nil then
    QBShared.Items['weapon_stungun'] = {
        name = 'weapon_stungun',
        label = 'Tazer',
        weight = 227,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_stungun.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_SUB_ADVANCED  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_sub_advanced'] = {
    name = 'weapon_sub_advanced',
    label = 'Sub Advanced',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_sub_advanced.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_SUB_SMG  shape=smg  ox=ammo-rifle
QBShared.Items['weapon_sub_smg'] = {
    name = 'weapon_sub_smg',
    label = 'Sub Smg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_sub_smg.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_SWITCH_HALLOWEEN  shape=pistol  ox=ammo-44
QBShared.Items['weapon_switch_halloween'] = {
    name = 'weapon_switch_halloween',
    label = 'Halloween Switch',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_switch_halloween.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_SWITCHBLADE  shape=knife  ox=none
if QBShared.Items['weapon_switchblade'] == nil then
    QBShared.Items['weapon_switchblade'] = {
        name = 'weapon_switchblade',
        label = 'Switchblade',
        weight = 300,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_switchblade.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_SWITCHBLADE_KAWAI  shape=knife  ox=none
QBShared.Items['weapon_switchblade_kawai'] = {
    name = 'weapon_switchblade_kawai',
    label = 'Switchblade Kawai',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_switchblade_kawai.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_SWITCHBLADE_VORTEX  shape=knife  ox=none
QBShared.Items['weapon_switchblade_vortex'] = {
    name = 'weapon_switchblade_vortex',
    label = 'Switchblade Vortex',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_switchblade_vortex.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_T19XD  shape=pistol  ox=pd-pistol
QBShared.Items['weapon_t19xd'] = {
    name = 'weapon_t19xd',
    label = 'T19xd',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_t19xd.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_TACTICALRIFLE  shape=ar  ox=ammo-rifle
if QBShared.Items['weapon_tacticalrifle'] == nil then
    QBShared.Items['weapon_tacticalrifle'] = {
        name = 'weapon_tacticalrifle',
        label = 'Tactical Rifle',
        weight = 3400,
        type = 'weapon',
        ammotype = 'AMMO_RIFLE',
        image = 'weapon_tacticalrifle.png',
        unique = true,
        useable = false,
        description = 'Rifle.',
    }
end

-- WEAPON_TANDAGGER  shape=knife  ox=ammo-44
QBShared.Items['weapon_tandagger'] = {
    name = 'weapon_tandagger',
    label = 'Tandagger',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_tandagger.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_TANG19X  shape=pistol  ox=ammo-44
QBShared.Items['weapon_tang19x'] = {
    name = 'weapon_tang19x',
    label = 'Tang19x',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_tang19x.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_TANG23WING  shape=pistol  ox=pd-pistol
QBShared.Items['weapon_tang23wing'] = {
    name = 'weapon_tang23wing',
    label = 'Tang23wing',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_tang23wing.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_TEARGAS  shape=gas  ox=none
if QBShared.Items['weapon_teargas'] == nil then
    QBShared.Items['weapon_teargas'] = {
        name = 'weapon_teargas',
        label = 'Tear Gas',
        weight = 600,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_teargas.png',
        unique = true,
        useable = false,
        description = 'Throwable.',
    }
end

-- WEAPON_TEC9  shape=smg  ox=ammo-9
QBShared.Items['weapon_tec9'] = {
    name = 'weapon_tec9',
    label = 'Tec9',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_tec9.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_TECPISTOL  shape=smg  ox=ammo-44
if QBShared.Items['weapon_tecpistol'] == nil then
    QBShared.Items['weapon_tecpistol'] = {
        name = 'weapon_tecpistol',
        label = 'Tactical SMG',
        weight = 1500,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_tecpistol.png',
        unique = true,
        useable = false,
        description = 'Submachine gun.',
    }
end

-- WEAPON_TECROSE  shape=pistol  ox=ammo-9
QBShared.Items['weapon_tecrose'] = {
    name = 'weapon_tecrose',
    label = 'Tecrose',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_tecrose.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_TG_GLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_tg_glock'] = {
    name = 'weapon_tg_glock',
    label = 'Tg Glock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_tg_glock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_THEBBQAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_thebbqap'] = {
    name = 'weapon_thebbqap',
    label = 'Thebbqap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_thebbqap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_THERMALKATANA  shape=katana  ox=none
QBShared.Items['weapon_thermalkatana'] = {
    name = 'weapon_thermalkatana',
    label = 'Thermalkatana',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_thermalkatana.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_TIFFANYVALENTINEAKV1BYDAIE  shape=ak  ox=ammo-rifle
QBShared.Items['weapon_tiffanyvalentineakv1bydaie'] = {
    name = 'weapon_tiffanyvalentineakv1bydaie',
    label = 'Tiffany Valentine AK v1',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_tiffanyvalentineakv1bydaie.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_TITAN22  shape=pistol  ox=pd-pistol
QBShared.Items['weapon_titan22'] = {
    name = 'weapon_titan22',
    label = 'Titan22',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_titan22.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_TMK47  shape=ak  ox=pd-rifle
QBShared.Items['weapon_tmk47'] = {
    name = 'weapon_tmk47',
    label = 'Tmk47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_tmk47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_TOXICCAMODAGGER  shape=knife  ox=ammo-44
QBShared.Items['weapon_toxiccamodagger'] = {
    name = 'weapon_toxiccamodagger',
    label = 'Toxiccamodagger',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_toxiccamodagger.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_TTIG34  shape=pistol  ox=ammo-44
QBShared.Items['weapon_ttig34'] = {
    name = 'weapon_ttig34',
    label = 'Ttig34',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_ttig34.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_UNICORN  shape=unicorn  ox=none
QBShared.Items['weapon_unicorn'] = {
    name = 'weapon_unicorn',
    label = 'Unicorn',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_unicorn.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_USP50T  shape=pistol  ox=ammo-44
QBShared.Items['weapon_usp50t'] = {
    name = 'weapon_usp50t',
    label = 'Usp50t',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_usp50t.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_VALAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_valap'] = {
    name = 'weapon_valap',
    label = 'Valap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_valap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_VALAR  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_valar'] = {
    name = 'weapon_valar',
    label = 'Valar',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_valar.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_VALLEYSBR  shape=ar  ox=pd-rifle
QBShared.Items['weapon_valleysbr'] = {
    name = 'weapon_valleysbr',
    label = 'SBR',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_valleysbr.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_VINTAGEPISTOL  shape=pistol  ox=ammo-44
if QBShared.Items['weapon_vintagepistol'] == nil then
    QBShared.Items['weapon_vintagepistol'] = {
        name = 'weapon_vintagepistol',
        label = 'Vintage Pistol',
        weight = 700,
        type = 'weapon',
        ammotype = 'AMMO_PISTOL',
        image = 'weapon_vintagepistol.png',
        unique = true,
        useable = false,
        description = 'Pistol.',
    }
end

-- WEAPON_VIPAR15  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_vipar15'] = {
    name = 'weapon_vipar15',
    label = 'Vipar15',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_vipar15.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_VIPBAT  shape=bat  ox=none
QBShared.Items['weapon_vipbat'] = {
    name = 'weapon_vipbat',
    label = 'Vipbat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_vipbat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_VIPHOCKEY  shape=hockey  ox=none
QBShared.Items['weapon_viphockey'] = {
    name = 'weapon_viphockey',
    label = 'Viphockey',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_viphockey.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_VIPKELTEC  shape=pistol  ox=ammo-44
QBShared.Items['weapon_vipkeltec'] = {
    name = 'weapon_vipkeltec',
    label = 'Vipkeltec',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_vipkeltec.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_VIPMP40  shape=smg  ox=ammo-9
QBShared.Items['weapon_vipmp40'] = {
    name = 'weapon_vipmp40',
    label = 'Vipmp40',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_vipmp40.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_VIPSR47  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_vipsr47'] = {
    name = 'weapon_vipsr47',
    label = 'Vipsr47',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_vipsr47.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_VIPSWITCH  shape=pistol  ox=ammo-44
QBShared.Items['weapon_vipswitch'] = {
    name = 'weapon_vipswitch',
    label = 'Vipswitch',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_vipswitch.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_VIPVECTOR  shape=smg  ox=ammo-9
QBShared.Items['weapon_vipvector'] = {
    name = 'weapon_vipvector',
    label = 'Vipvector',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_vipvector.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_W88  shape=pistol  ox=ammo-44
QBShared.Items['weapon_w88'] = {
    name = 'weapon_w88',
    label = 'W88',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_w88.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_WATERGUNAP  shape=pistol  ox=ammo-44
QBShared.Items['weapon_watergunap'] = {
    name = 'weapon_watergunap',
    label = 'Watergunap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_watergunap.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_WATERGUNSMG  shape=smg  ox=ammo-9
QBShared.Items['weapon_watergunsmg'] = {
    name = 'weapon_watergunsmg',
    label = 'Watergunsmg',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_watergunsmg.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_WATTASTICK  shape=wand  ox=none
QBShared.Items['weapon_wattastick'] = {
    name = 'weapon_wattastick',
    label = 'Wattastick',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_wattastick.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_WCAMOHELLCAT  shape=pistol  ox=ammo-44
QBShared.Items['weapon_wcamohellcat'] = {
    name = 'weapon_wcamohellcat',
    label = 'Wcamohellcat',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_wcamohellcat.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_WHITEKATANA  shape=katana  ox=none
QBShared.Items['weapon_whitekatana'] = {
    name = 'weapon_whitekatana',
    label = 'Whitekatana',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_whitekatana.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_WHITELIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_whitelightsaber'] = {
    name = 'weapon_whitelightsaber',
    label = 'Whitelightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_whitelightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_WHITEREFLECTIVEVECTOR  shape=smg  ox=ammo-9
QBShared.Items['weapon_whitereflectivevector'] = {
    name = 'weapon_whitereflectivevector',
    label = 'Whitereflectivevector',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_whitereflectivevector.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_WIREBAT  shape=bat  ox=none
QBShared.Items['weapon_wirebat'] = {
    name = 'weapon_wirebat',
    label = 'Wirebat',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_wirebat.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_WIREFRAME_1911  shape=pistol  ox=ammo-44
QBShared.Items['weapon_wireframe_1911'] = {
    name = 'weapon_wireframe_1911',
    label = 'Wireframe 1911',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_wireframe_1911.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_WIREFRAME_9ARP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_wireframe_9arp'] = {
    name = 'weapon_wireframe_9arp',
    label = 'Wireframe 9Arp',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_wireframe_9arp.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_WIREFRAME_AR15  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_wireframe_ar15'] = {
    name = 'weapon_wireframe_ar15',
    label = 'Wireframe Ar15',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_wireframe_ar15.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_WIREFRAME_DEAGLE  shape=deagle  ox=ammo-44
QBShared.Items['weapon_wireframe_deagle'] = {
    name = 'weapon_wireframe_deagle',
    label = 'Wireframe Deagle',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_wireframe_deagle.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_WIREFRAME_HS  shape=bat  ox=none
QBShared.Items['weapon_wireframe_hs'] = {
    name = 'weapon_wireframe_hs',
    label = 'Wireframe Hs',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_wireframe_hs.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_WIREFRAME_MAC10  shape=smg  ox=ammo-9
QBShared.Items['weapon_wireframe_mac10'] = {
    name = 'weapon_wireframe_mac10',
    label = 'Wireframe Mac10',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_wireframe_mac10.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_WIREFRAME_PPSH  shape=smg  ox=ammo-9
QBShared.Items['weapon_wireframe_ppsh'] = {
    name = 'weapon_wireframe_ppsh',
    label = 'Wireframe Ppsh',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_wireframe_ppsh.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_WIREFRAME_TOMMY  shape=smg  ox=ammo-rifle
QBShared.Items['weapon_wireframe_tommy'] = {
    name = 'weapon_wireframe_tommy',
    label = 'Wireframe Tommy',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_wireframe_tommy.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_WIREFRAME_UMP45  shape=smg  ox=ammo-9
QBShared.Items['weapon_wireframe_ump45'] = {
    name = 'weapon_wireframe_ump45',
    label = 'Wireframe Ump45',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_SMG',
    image = 'weapon_wireframe_ump45.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_WIREFRAME_VECTOR  shape=smg  ox=ammo-rifle
QBShared.Items['weapon_wireframe_vector'] = {
    name = 'weapon_wireframe_vector',
    label = 'Wireframe Vector',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_wireframe_vector.png',
    unique = true,
    useable = false,
    description = 'Submachine gun.',
}

-- WEAPON_WRENCH  shape=wrench  ox=none
if QBShared.Items['weapon_wrench'] == nil then
    QBShared.Items['weapon_wrench'] = {
        name = 'weapon_wrench',
        label = 'Wrench',
        weight = 2500,
        type = 'weapon',
        ammotype = nil,
        image = 'weapon_wrench.png',
        unique = true,
        useable = false,
        description = 'Melee weapon.',
    }
end

-- WEAPON_YELLOWARPWSTRAP  shape=arp  ox=ammo-rifle
QBShared.Items['weapon_yellowarpwstrap'] = {
    name = 'weapon_yellowarpwstrap',
    label = 'Yellowarpwstrap',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_yellowarpwstrap.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- WEAPON_YELLOWKATANA  shape=katana  ox=none
QBShared.Items['weapon_yellowkatana'] = {
    name = 'weapon_yellowkatana',
    label = 'Yellowkatana',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_yellowkatana.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_YELLOWLIGHTSABER  shape=saber  ox=none
QBShared.Items['weapon_yellowlightsaber'] = {
    name = 'weapon_yellowlightsaber',
    label = 'Yellowlightsaber',
    weight = 12000,
    type = 'weapon',
    ammotype = nil,
    image = 'weapon_yellowlightsaber.png',
    unique = true,
    useable = false,
    description = 'Melee weapon.',
}

-- WEAPON_YELLOWONE  shape=pistol  ox=ammo-44
QBShared.Items['weapon_yellowone'] = {
    name = 'weapon_yellowone',
    label = 'Yellowone',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_yellowone.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_YELLOWREAPER  shape=pistol  ox=ammo-44
QBShared.Items['weapon_yellowreaper'] = {
    name = 'weapon_yellowreaper',
    label = 'Yellowreaper',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_yellowreaper.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_YELLOWTWO  shape=pistol  ox=ammo-44
QBShared.Items['weapon_yellowtwo'] = {
    name = 'weapon_yellowtwo',
    label = 'Yellowtwo',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_yellowtwo.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_YLSEASTERCLOCK  shape=pistol  ox=ammo-44
QBShared.Items['weapon_ylseasterclock'] = {
    name = 'weapon_ylseasterclock',
    label = 'Ylseasterclock',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_ylseasterclock.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_YTASER  shape=taser  ox=none
QBShared.Items['weapon_ytaser'] = {
    name = 'weapon_ytaser',
    label = 'Ytaser',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_PISTOL',
    image = 'weapon_ytaser.png',
    unique = true,
    useable = false,
    description = 'Pistol.',
}

-- WEAPON_ZW_AMANDARIFLE  shape=ar  ox=ammo-rifle
QBShared.Items['weapon_zw_amandarifle'] = {
    name = 'weapon_zw_amandarifle',
    label = 'Zw Amandarifle',
    weight = 12000,
    type = 'weapon',
    ammotype = 'AMMO_RIFLE',
    image = 'weapon_zw_amandarifle.png',
    unique = true,
    useable = false,
    description = 'Rifle.',
}

-- Weapon info
QBShared.Weapons[`weapon_30p`] = {
    name = 'weapon_30p',
    label = '30P',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_4thofjglock`] = {
    name = 'weapon_4thofjglock',
    label = '4Thofjglock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_abyssmr920p`] = {
    name = 'weapon_abyssmr920p',
    label = 'Abyssmr920p',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_advancedrifle`] == nil then
    QBShared.Weapons[`weapon_advancedrifle`] = {
        name = 'weapon_advancedrifle',
        label = 'Advanced Rifle',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

QBShared.Weapons[`weapon_advancedrifle_vortex`] = {
    name = 'weapon_advancedrifle_vortex',
    label = 'Advancedrifle Vortex',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_aktiveg22grip`] = {
    name = 'weapon_aktiveg22grip',
    label = 'Aktiveg22grip',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_angelap`] = {
    name = 'weapon_angelap',
    label = 'Angelap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_angelbat`] = {
    name = 'weapon_angelbat',
    label = 'Angelbat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_angelmp7`] = {
    name = 'weapon_angelmp7',
    label = 'Angelmp7',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_appistol`] == nil then
    QBShared.Weapons[`weapon_appistol`] = {
        name = 'weapon_appistol',
        label = 'AP Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_appistol_graveyard`] = {
    name = 'weapon_appistol_graveyard',
    label = 'Appistol Graveyard',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_appistol_irondust`] = {
    name = 'weapon_appistol_irondust',
    label = 'Appistol Irondust',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_appistol_retropixel`] = {
    name = 'weapon_appistol_retropixel',
    label = 'Appistol Retropixel',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_appistol_starkiller`] = {
    name = 'weapon_appistol_starkiller',
    label = 'Appistol Starkiller',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_appistol_steampunk`] = {
    name = 'weapon_appistol_steampunk',
    label = 'Appistol Steampunk',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_arpbcg`] = {
    name = 'weapon_arpbcg',
    label = 'Arpbcg',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_arpkyree`] = {
    name = 'weapon_arpkyree',
    label = 'Arpkyree',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_assaultrifle`] == nil then
    QBShared.Weapons[`weapon_assaultrifle`] = {
        name = 'weapon_assaultrifle',
        label = 'Assault Rifle',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

if QBShared.Weapons[`weapon_assaultrifle_mk2`] == nil then
    QBShared.Weapons[`weapon_assaultrifle_mk2`] = {
        name = 'weapon_assaultrifle_mk2',
        label = 'Assault Rifle MK2',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

QBShared.Weapons[`weapon_assaultrifle_mk2_darkmatter`] = {
    name = 'weapon_assaultrifle_mk2_darkmatter',
    label = 'Assaultrifle Mk2 Darkmatter',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_assaultrifle_mk2_kawai`] = {
    name = 'weapon_assaultrifle_mk2_kawai',
    label = 'Assaultrifle Mk2 Kawai',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_assaultrifle_mk2_vortex`] = {
    name = 'weapon_assaultrifle_mk2_vortex',
    label = 'Assaultrifle Mk2 Vortex',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_assaultshotgun`] == nil then
    QBShared.Weapons[`weapon_assaultshotgun`] = {
        name = 'weapon_assaultshotgun',
        label = 'Assault Shotgun',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

if QBShared.Weapons[`weapon_assaultsmg`] == nil then
    QBShared.Weapons[`weapon_assaultsmg`] = {
        name = 'weapon_assaultsmg',
        label = 'Assault SMG',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_SMG',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

QBShared.Weapons[`weapon_assaultsmg_retropixel`] = {
    name = 'weapon_assaultsmg_retropixel',
    label = 'Assaultsmg Retropixel',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_assaultsmg_vortex`] = {
    name = 'weapon_assaultsmg_vortex',
    label = 'Assaultsmg Vortex',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_atsdracsemi`] = {
    name = 'weapon_atsdracsemi',
    label = 'ATS Drac',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_autoshotgun`] == nil then
    QBShared.Weapons[`weapon_autoshotgun`] = {
        name = 'weapon_autoshotgun',
        label = 'Sweeper Shotgun',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

if QBShared.Weapons[`weapon_ball`] == nil then
    QBShared.Weapons[`weapon_ball`] = {
        name = 'weapon_ball',
        label = 'Ball',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

QBShared.Weapons[`weapon_banksongp2ak47`] = {
    name = 'weapon_banksongp2ak47',
    label = 'Banksongp2ak47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2aks`] = {
    name = 'weapon_banksongp2aks',
    label = 'Banksongp2aks',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2ar15`] = {
    name = 'weapon_banksongp2ar15',
    label = 'Banksongp2ar15',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2arp`] = {
    name = 'weapon_banksongp2arp',
    label = 'Banksongp2arp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2asval`] = {
    name = 'weapon_banksongp2asval',
    label = 'Banksongp2asval',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2bizon`] = {
    name = 'weapon_banksongp2bizon',
    label = 'Banksongp2bizon',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_banksongp2cz75`] = {
    name = 'weapon_banksongp2cz75',
    label = 'Banksongp2cz75',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_banksongp2draco`] = {
    name = 'weapon_banksongp2draco',
    label = 'Banksongp2draco',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2evo`] = {
    name = 'weapon_banksongp2evo',
    label = 'Banksongp2evo',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_banksongp2g17s`] = {
    name = 'weapon_banksongp2g17s',
    label = 'Banksongp2g17s',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_banksongp2g18c`] = {
    name = 'weapon_banksongp2g18c',
    label = 'Banksongp2g18c',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_banksongp2g22s`] = {
    name = 'weapon_banksongp2g22s',
    label = 'Banksongp2g22s',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_banksongp2g41s`] = {
    name = 'weapon_banksongp2g41s',
    label = 'Banksongp2g41s',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_banksongp2hk416`] = {
    name = 'weapon_banksongp2hk416',
    label = 'Banksongp2hk416',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2krigc`] = {
    name = 'weapon_banksongp2krigc',
    label = 'Banksongp2krigc',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2kvector`] = {
    name = 'weapon_banksongp2kvector',
    label = 'Banksongp2kvector',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_banksongp2m4a1`] = {
    name = 'weapon_banksongp2m4a1',
    label = 'Banksongp2m4a1',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2m4cqc`] = {
    name = 'weapon_banksongp2m4cqc',
    label = 'Banksongp2m4cqc',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2mkcqc`] = {
    name = 'weapon_banksongp2mkcqc',
    label = 'Banksongp2mkcqc',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2mp5`] = {
    name = 'weapon_banksongp2mp5',
    label = 'Banksongp2mp5',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_banksongp2mp9`] = {
    name = 'weapon_banksongp2mp9',
    label = 'Banksongp2mp9',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_banksongp2mpl`] = {
    name = 'weapon_banksongp2mpl',
    label = 'Banksongp2mpl',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_banksongp2pp19`] = {
    name = 'weapon_banksongp2pp19',
    label = 'Banksongp2pp19',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_banksongp2ren`] = {
    name = 'weapon_banksongp2ren',
    label = 'Banksongp2ren',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_banksongp2scarh`] = {
    name = 'weapon_banksongp2scarh',
    label = 'Banksongp2scarh',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2sig556`] = {
    name = 'weapon_banksongp2sig556',
    label = 'Banksongp2sig556',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2sigmcx`] = {
    name = 'weapon_banksongp2sigmcx',
    label = 'Banksongp2sigmcx',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2spas12`] = {
    name = 'weapon_banksongp2spas12',
    label = 'Banksongp2spas12',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_banksongp2superi`] = {
    name = 'weapon_banksongp2superi',
    label = 'Banksongp2superi',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_banksongp2ump45`] = {
    name = 'weapon_banksongp2ump45',
    label = 'Banksongp2ump45',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_bat`] == nil then
    QBShared.Weapons[`weapon_bat`] = {
        name = 'weapon_bat',
        label = 'Bat',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_bat_kawai`] = {
    name = 'weapon_bat_kawai',
    label = 'Bat Kawai',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_battleaxe`] == nil then
    QBShared.Weapons[`weapon_battleaxe`] = {
        name = 'weapon_battleaxe',
        label = 'Battle Axe',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_battleaxe_graveyard`] = {
    name = 'weapon_battleaxe_graveyard',
    label = 'Battleaxe Graveyard',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_battlerifle`] == nil then
    QBShared.Weapons[`weapon_battlerifle`] = {
        name = 'weapon_battlerifle',
        label = 'Battle Rifle',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

QBShared.Weapons[`weapon_bbdiamond`] = {
    name = 'weapon_bbdiamond',
    label = 'Bbdiamond',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_beanbagshotgun`] = {
    name = 'weapon_beanbagshotgun',
    label = 'Beanbagshotgun',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_blackdiamonddraco`] = {
    name = 'weapon_blackdiamonddraco',
    label = 'Blackdiamonddraco',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_blacklightsaber`] = {
    name = 'weapon_blacklightsaber',
    label = 'Blacklightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_blastknife`] = {
    name = 'weapon_blastknife',
    label = 'Blastknife',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_blastxphantom`] = {
    name = 'weapon_blastxphantom',
    label = 'Blastxphantom',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_bluearpwstrap`] = {
    name = 'weapon_bluearpwstrap',
    label = 'Bluearpwstrap',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_bluelightsaber`] = {
    name = 'weapon_bluelightsaber',
    label = 'Bluelightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_blueone`] = {
    name = 'weapon_blueone',
    label = 'Blueone',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_bluereaper`] = {
    name = 'weapon_bluereaper',
    label = 'Bluereaper',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_bluespadeg17`] = {
    name = 'weapon_bluespadeg17',
    label = 'Bluespadeg17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_bluestorm`] = {
    name = 'weapon_bluestorm',
    label = 'Bluestorm',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_bluewire`] = {
    name = 'weapon_bluewire',
    label = 'Bluewire',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_boneshard`] = {
    name = 'weapon_boneshard',
    label = 'Boneshard',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_boneshardv2`] = {
    name = 'weapon_boneshardv2',
    label = 'Boneshardv2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_bongshot`] = {
    name = 'weapon_bongshot',
    label = 'Bongshot',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_bongshotv2`] = {
    name = 'weapon_bongshotv2',
    label = 'Bongshotv2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_bottle`] == nil then
    QBShared.Weapons[`weapon_bottle`] = {
        name = 'weapon_bottle',
        label = 'Bottle',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_bsext`] = {
    name = 'weapon_bsext',
    label = 'Bsext',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_bslamp40`] = {
    name = 'weapon_bslamp40',
    label = 'Bslamp40',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_bslapink`] = {
    name = 'weapon_bslapink',
    label = 'Bslapink',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_bslaredzone`] = {
    name = 'weapon_bslaredzone',
    label = 'Bslaredzone',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_bslawire`] = {
    name = 'weapon_bslawire',
    label = 'Bslawire',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_bullpupmk2_kawai`] = {
    name = 'weapon_bullpupmk2_kawai',
    label = 'Bullpupmk2 Kawai',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_bullpupmk2_retropixel`] = {
    name = 'weapon_bullpupmk2_retropixel',
    label = 'Bullpupmk2 Retropixel',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_bullpuprifle`] == nil then
    QBShared.Weapons[`weapon_bullpuprifle`] = {
        name = 'weapon_bullpuprifle',
        label = 'Bullpup Rifle',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

if QBShared.Weapons[`weapon_bullpuprifle_mk2`] == nil then
    QBShared.Weapons[`weapon_bullpuprifle_mk2`] = {
        name = 'weapon_bullpuprifle_mk2',
        label = 'Bullpup Rifle MK2',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

if QBShared.Weapons[`weapon_bullpupshotgun`] == nil then
    QBShared.Weapons[`weapon_bullpupshotgun`] = {
        name = 'weapon_bullpupshotgun',
        label = 'Bullpup Shotgun',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

if QBShared.Weapons[`weapon_bzgas`] == nil then
    QBShared.Weapons[`weapon_bzgas`] = {
        name = 'weapon_bzgas',
        label = 'BZ Gas',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

QBShared.Weapons[`weapon_camodraco`] = {
    name = 'weapon_camodraco',
    label = 'Camodraco',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_camohellcat`] = {
    name = 'weapon_camohellcat',
    label = 'Camohellcat',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_camowhiteglock17`] = {
    name = 'weapon_camowhiteglock17',
    label = 'Camowhiteglock17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_candycane`] == nil then
    QBShared.Weapons[`weapon_candycane`] = {
        name = 'weapon_candycane',
        label = 'Candy Cane',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

if QBShared.Weapons[`weapon_carbinerifle`] == nil then
    QBShared.Weapons[`weapon_carbinerifle`] = {
        name = 'weapon_carbinerifle',
        label = 'Carbine Rifle',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

QBShared.Weapons[`weapon_carbinerifle_irondust_mk2`] = {
    name = 'weapon_carbinerifle_irondust_mk2',
    label = 'Carbinerifle Irondust Mk2',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_carbinerifle_mk2`] == nil then
    QBShared.Weapons[`weapon_carbinerifle_mk2`] = {
        name = 'weapon_carbinerifle_mk2',
        label = 'Carbine Rifle MK2',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

QBShared.Weapons[`weapon_carbinerifle_mk2_darkmatter`] = {
    name = 'weapon_carbinerifle_mk2_darkmatter',
    label = 'Carbinerifle Mk2 Darkmatter',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_carbinerifle_mk2_graveyard`] = {
    name = 'weapon_carbinerifle_mk2_graveyard',
    label = 'Carbinerifle Mk2 Graveyard',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_carbinerifle_mk2_kawai`] = {
    name = 'weapon_carbinerifle_mk2_kawai',
    label = 'Carbinerifle Mk2 Kawai',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_carbinerifle_mk2_retropixel`] = {
    name = 'weapon_carbinerifle_mk2_retropixel',
    label = 'Carbinerifle Mk2 Retropixel',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_carbinerifle_mk2_starkiller`] = {
    name = 'weapon_carbinerifle_mk2_starkiller',
    label = 'Carbinerifle Mk2 Starkiller',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_carbinerifle_mk2_steampunk`] = {
    name = 'weapon_carbinerifle_mk2_steampunk',
    label = 'Carbinerifle Mk2 Steampunk',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_cartoonak`] = {
    name = 'weapon_cartoonak',
    label = 'Cartoonak',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_SMG',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_ceramicpistol`] == nil then
    QBShared.Weapons[`weapon_ceramicpistol`] = {
        name = 'weapon_ceramicpistol',
        label = 'Ceramic Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_certifieduzi`] = {
    name = 'weapon_certifieduzi',
    label = 'Certifieduzi',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_chainsaw`] = {
    name = 'weapon_chainsaw',
    label = 'Chainsaw',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_cherrykatana`] = {
    name = 'weapon_cherrykatana',
    label = 'Cherrykatana',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_cherrykunai`] = {
    name = 'weapon_cherrykunai',
    label = 'Cherrykunai',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_cherrymp7`] = {
    name = 'weapon_cherrymp7',
    label = 'CHERRYMP7',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_christmasglock3`] = {
    name = 'weapon_christmasglock3',
    label = 'Christmasglock3',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_chromewiresmg`] = {
    name = 'weapon_chromewiresmg',
    label = 'Chromewiresmg',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_chromium9mmarp`] = {
    name = 'weapon_chromium9mmarp',
    label = 'Chromium9mmarp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_chromiumas2d`] = {
    name = 'weapon_chromiumas2d',
    label = 'Chromiumas2d',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_chromiumbanshee`] = {
    name = 'weapon_chromiumbanshee',
    label = 'Chromiumbanshee',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_chromiumfoldedump`] = {
    name = 'weapon_chromiumfoldedump',
    label = 'Chromiumfoldedump',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_chromiumiso`] = {
    name = 'weapon_chromiumiso',
    label = 'Chromiumiso',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_chromiummp5`] = {
    name = 'weapon_chromiummp5',
    label = 'Chromiummp5',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_chromiumsmg`] = {
    name = 'weapon_chromiumsmg',
    label = 'Chromiumsmg',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_chuckyakv1bydaie`] = {
    name = 'weapon_chuckyakv1bydaie',
    label = 'Chucky AK v1',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_chuckyswitchv1bydaie`] = {
    name = 'weapon_chuckyswitchv1bydaie',
    label = 'Chucky Glock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_combatmg`] == nil then
    QBShared.Weapons[`weapon_combatmg`] = {
        name = 'weapon_combatmg',
        label = 'Combat MG',
        weapontype = 'Light Machine Gun',
        ammotype = 'AMMO_MG',
        damagereason = 'Machine gunned / Sprayed / Ruined',
    }
end

if QBShared.Weapons[`weapon_combatmg_mk2`] == nil then
    QBShared.Weapons[`weapon_combatmg_mk2`] = {
        name = 'weapon_combatmg_mk2',
        label = 'Combat MG MK2',
        weapontype = 'Light Machine Gun',
        ammotype = 'AMMO_MG',
        damagereason = 'Machine gunned / Sprayed / Ruined',
    }
end

QBShared.Weapons[`weapon_combatmg_mk2_graveyard`] = {
    name = 'weapon_combatmg_mk2_graveyard',
    label = 'Combatmg Mk2 Graveyard',
    weapontype = 'Light Machine Gun',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Machine gunned / Sprayed / Ruined',
}

if QBShared.Weapons[`weapon_combatpdw`] == nil then
    QBShared.Weapons[`weapon_combatpdw`] = {
        name = 'weapon_combatpdw',
        label = 'Combat PDW',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_SMG',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

QBShared.Weapons[`weapon_combatpdw_irondust`] = {
    name = 'weapon_combatpdw_irondust',
    label = 'Combatpdw Irondust',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_combatpdw_kawai`] = {
    name = 'weapon_combatpdw_kawai',
    label = 'Combatpdw Kawai',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_combatpistol`] == nil then
    QBShared.Weapons[`weapon_combatpistol`] = {
        name = 'weapon_combatpistol',
        label = 'Combat Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_combatpistol_vortex`] = {
    name = 'weapon_combatpistol_vortex',
    label = 'Combatpistol Vortex',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_combatshotgun`] == nil then
    QBShared.Weapons[`weapon_combatshotgun`] = {
        name = 'weapon_combatshotgun',
        label = 'Combat Shotgun',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

if QBShared.Weapons[`weapon_compactlauncher`] == nil then
    QBShared.Weapons[`weapon_compactlauncher`] = {
        name = 'weapon_compactlauncher',
        label = 'Compact Grenade Launcher',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_GRENADELAUNCHER',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

if QBShared.Weapons[`weapon_compactrifle`] == nil then
    QBShared.Weapons[`weapon_compactrifle`] = {
        name = 'weapon_compactrifle',
        label = 'Compact Rifle',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

QBShared.Weapons[`weapon_crayonap`] = {
    name = 'weapon_crayonap',
    label = 'Crayonap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_crayonbat`] = {
    name = 'weapon_crayonbat',
    label = 'Crayonbat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_crayonvector`] = {
    name = 'weapon_crayonvector',
    label = 'Crayonvector',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_crowbar`] == nil then
    QBShared.Weapons[`weapon_crowbar`] = {
        name = 'weapon_crowbar',
        label = 'Crowbar',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_cruisear`] = {
    name = 'weapon_cruisear',
    label = 'Cruisear',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_cupidap`] = {
    name = 'weapon_cupidap',
    label = 'Cupidap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_cuteap`] = {
    name = 'weapon_cuteap',
    label = 'Cuteap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_cuzzog17`] = {
    name = 'weapon_cuzzog17',
    label = 'Cuzzog17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_cyankatana`] = {
    name = 'weapon_cyankatana',
    label = 'Cyankatana',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_cyanlightsaber`] = {
    name = 'weapon_cyanlightsaber',
    label = 'Cyanlightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_cyanreaper`] = {
    name = 'weapon_cyanreaper',
    label = 'Cyanreaper',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_dagger`] == nil then
    QBShared.Weapons[`weapon_dagger`] = {
        name = 'weapon_dagger',
        label = 'Dagger',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_darkmatter_m4`] = {
    name = 'weapon_darkmatter_m4',
    label = 'Darkmatter M4',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_darkmatter_mp40`] = {
    name = 'weapon_darkmatter_mp40',
    label = 'Darkmatter Mp40',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_darkmatter_sp320`] = {
    name = 'weapon_darkmatter_sp320',
    label = 'Darkmatter Sp320',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_darkmatter_sr47`] = {
    name = 'weapon_darkmatter_sr47',
    label = 'Darkmatter Sr47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_darkmatter_striker`] = {
    name = 'weapon_darkmatter_striker',
    label = 'Darkmatter Striker',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_dbshotgun`] == nil then
    QBShared.Weapons[`weapon_dbshotgun`] = {
        name = 'weapon_dbshotgun',
        label = 'Double Barrel Shotgun',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

QBShared.Weapons[`weapon_dcg19`] = {
    name = 'weapon_dcg19',
    label = 'Dcg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dcg23`] = {
    name = 'weapon_dcg23',
    label = 'Dcg23',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_devilap`] = {
    name = 'weapon_devilap',
    label = 'Devilap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_devilbat`] = {
    name = 'weapon_devilbat',
    label = 'Devilbat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_dezak47`] = {
    name = 'weapon_dezak47',
    label = 'Dezak47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_dezboomstick`] = {
    name = 'weapon_dezboomstick',
    label = 'Dezboomstick',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_dg17g4`] = {
    name = 'weapon_dg17g4',
    label = 'Dg17g4',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dg17g5`] = {
    name = 'weapon_dg17g5',
    label = 'Dg17g5',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dg18`] = {
    name = 'weapon_dg18',
    label = 'Dg18',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dg19`] = {
    name = 'weapon_dg19',
    label = 'Dg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dg19g5`] = {
    name = 'weapon_dg19g5',
    label = 'Dg19g5',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dg19x`] = {
    name = 'weapon_dg19x',
    label = 'Dg19x',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dg20`] = {
    name = 'weapon_dg20',
    label = 'Dg20',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dg26g5`] = {
    name = 'weapon_dg26g5',
    label = 'Dg26g5',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dg43x`] = {
    name = 'weapon_dg43x',
    label = 'Dg43x',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_diamond_m4`] = {
    name = 'weapon_diamond_m4',
    label = 'Diamond M4',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_diamond_mp40`] = {
    name = 'weapon_diamond_mp40',
    label = 'Diamond Mp40',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_diamond_sp320`] = {
    name = 'weapon_diamond_sp320',
    label = 'Diamond Sp320',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_diamond_sr47`] = {
    name = 'weapon_diamond_sr47',
    label = 'Diamond Sr47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_diamond_striker`] = {
    name = 'weapon_diamond_striker',
    label = 'Diamond Striker',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dieselar13`] = {
    name = 'weapon_dieselar13',
    label = 'Dieselar13',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_digiscanner`] == nil then
    QBShared.Weapons[`weapon_digiscanner`] = {
        name = 'weapon_digiscanner',
        label = 'Digiscanner',
        weapontype = 'Miscellaneous',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Died',
    }
end

QBShared.Weapons[`weapon_dildo`] = {
    name = 'weapon_dildo',
    label = 'Dildo',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_dildobat`] = {
    name = 'weapon_dildobat',
    label = 'Dildobat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_doubleaction`] == nil then
    QBShared.Weapons[`weapon_doubleaction`] = {
        name = 'weapon_doubleaction',
        label = 'Double Action Revolver',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_draco2`] = {
    name = 'weapon_draco2',
    label = 'Draco2',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_dracoz`] = {
    name = 'weapon_dracoz',
    label = 'Dracoz',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_dreadhorn`] = {
    name = 'weapon_dreadhorn',
    label = 'Dreadhorn',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_dreadhornv2`] = {
    name = 'weapon_dreadhornv2',
    label = 'Dreadhornv2',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_dreamyhbp80`] = {
    name = 'weapon_dreamyhbp80',
    label = 'Dreamyhbp80',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_dviper`] = {
    name = 'weapon_dviper',
    label = 'Dviper',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_emplauncher`] == nil then
    QBShared.Weapons[`weapon_emplauncher`] = {
        name = 'weapon_emplauncher',
        label = 'Compact EMP Launcher',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_EMPLAUNCHER',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

QBShared.Weapons[`weapon_esmemp67`] = {
    name = 'weapon_esmemp67',
    label = 'Esmemp67',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_fertilizercan`] == nil then
    QBShared.Weapons[`weapon_fertilizercan`] = {
        name = 'weapon_fertilizercan',
        label = 'Fertilizer Can',
        weapontype = 'Miscellaneous',
        ammotype = 'AMMO_FERTILIZERCAN',
        damagereason = 'Died',
    }
end

if QBShared.Weapons[`weapon_fireextinguisher`] == nil then
    QBShared.Weapons[`weapon_fireextinguisher`] = {
        name = 'weapon_fireextinguisher',
        label = 'Fire Extinguisher',
        weapontype = 'Miscellaneous',
        ammotype = nil,
        damagereason = 'Died',
    }
end

if QBShared.Weapons[`weapon_firework`] == nil then
    QBShared.Weapons[`weapon_firework`] = {
        name = 'weapon_firework',
        label = 'Firework Launcher',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_FIREWORK',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

QBShared.Weapons[`weapon_flame680`] = {
    name = 'weapon_flame680',
    label = 'Flame680',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

if QBShared.Weapons[`weapon_flare`] == nil then
    QBShared.Weapons[`weapon_flare`] = {
        name = 'weapon_flare',
        label = 'Flare',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

if QBShared.Weapons[`weapon_flaregun`] == nil then
    QBShared.Weapons[`weapon_flaregun`] = {
        name = 'weapon_flaregun',
        label = 'Flare Gun',
        weapontype = 'Pistol',
        ammotype = 'AMMO_FLARE',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

if QBShared.Weapons[`weapon_flashlight`] == nil then
    QBShared.Weapons[`weapon_flashlight`] = {
        name = 'weapon_flashlight',
        label = 'Flashlight',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_fm1_honeybadger`] = {
    name = 'weapon_fm1_honeybadger',
    label = 'Fm1 Honeybadger',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_fn57`] = {
    name = 'weapon_fn57',
    label = 'Fn57',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_fn57p`] = {
    name = 'weapon_fn57p',
    label = 'Fn57p',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_fnx45b`] = {
    name = 'weapon_fnx45b',
    label = 'Fnx45b',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_fortnitepickaxe`] = {
    name = 'weapon_fortnitepickaxe',
    label = 'Fortnitepickaxe',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_fortnitepistol`] = {
    name = 'weapon_fortnitepistol',
    label = 'Fortnitepistol',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_freddyakv1bydaie`] = {
    name = 'weapon_freddyakv1bydaie',
    label = 'Freddy AK',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_frenzyap`] = {
    name = 'weapon_frenzyap',
    label = 'Frenzyap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g17g5s`] = {
    name = 'weapon_g17g5s',
    label = 'G17g5s',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g17gen5`] = {
    name = 'weapon_g17gen5',
    label = 'G17gen5',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g19grip`] = {
    name = 'weapon_g19grip',
    label = 'G19grip',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g19kit`] = {
    name = 'weapon_g19kit',
    label = 'G19kit',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g19redb`] = {
    name = 'weapon_g19redb',
    label = 'G19redb',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g19wgrip`] = {
    name = 'weapon_g19wgrip',
    label = 'G19wgrip',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g19xbinary`] = {
    name = 'weapon_g19xbinary',
    label = 'G19xbinary',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g20`] = {
    name = 'weapon_g20',
    label = 'G20',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g21black`] = {
    name = 'weapon_g21black',
    label = 'G21black',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g21blue`] = {
    name = 'weapon_g21blue',
    label = 'G21blue',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g21drum`] = {
    name = 'weapon_g21drum',
    label = 'G21drum',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g21green`] = {
    name = 'weapon_g21green',
    label = 'G21green',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g21iced`] = {
    name = 'weapon_g21iced',
    label = 'G21iced',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g21pink`] = {
    name = 'weapon_g21pink',
    label = 'G21pink',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g21red`] = {
    name = 'weapon_g21red',
    label = 'G21red',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g41f`] = {
    name = 'weapon_g41f',
    label = 'G41f',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g43xc`] = {
    name = 'weapon_g43xc',
    label = 'G43xc',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_g45s`] = {
    name = 'weapon_g45s',
    label = 'G45s',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_gadgetpistol`] == nil then
    QBShared.Weapons[`weapon_gadgetpistol`] = {
        name = 'weapon_gadgetpistol',
        label = 'Perico Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_galaxyap`] = {
    name = 'weapon_galaxyap',
    label = 'Galaxyap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_galaxydraco`] = {
    name = 'weapon_galaxydraco',
    label = 'Galaxydraco',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_galaxyfoldedsig`] = {
    name = 'weapon_galaxyfoldedsig',
    label = 'Galaxyfoldedsig',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_galaxyr5`] = {
    name = 'weapon_galaxyr5',
    label = 'Galaxyr5',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_gdminishotgun`] = {
    name = 'weapon_gdminishotgun',
    label = 'Gdminishotgun',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_gdump45`] = {
    name = 'weapon_gdump45',
    label = 'Gdump45',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_ghostfaceakv1bydaie`] = {
    name = 'weapon_ghostfaceakv1bydaie',
    label = 'Ghostface AK v1',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_ghostfaceswitchv1bydaie`] = {
    name = 'weapon_ghostfaceswitchv1bydaie',
    label = 'Ghostface Glock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_gk17_halloween`] = {
    name = 'weapon_gk17_halloween',
    label = 'Halloween GK17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glaciarovo`] = {
    name = 'weapon_glaciarovo',
    label = 'Glaciarovo',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock17s`] = {
    name = 'weapon_glock17s',
    label = 'Glock17s',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock18c`] = {
    name = 'weapon_glock18c',
    label = 'Glock18c',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock19`] = {
    name = 'weapon_glock19',
    label = 'Glock19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock19s`] = {
    name = 'weapon_glock19s',
    label = 'Glock19s',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock21`] = {
    name = 'weapon_glock21',
    label = 'Glock21',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock26s`] = {
    name = 'weapon_glock26s',
    label = 'Glock26s',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock40`] = {
    name = 'weapon_glock40',
    label = 'Glock40',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock40s`] = {
    name = 'weapon_glock40s',
    label = 'Glock40s',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock_c1`] = {
    name = 'weapon_glock_c1',
    label = 'Glock C1',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_glock_c2`] = {
    name = 'weapon_glock_c2',
    label = 'Glock C2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_golddiamond`] = {
    name = 'weapon_golddiamond',
    label = 'Golddiamond',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_goldg17g5`] = {
    name = 'weapon_goldg17g5',
    label = 'Goldg17g5',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_goldg19`] = {
    name = 'weapon_goldg19',
    label = 'Goldg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_goldg21`] = {
    name = 'weapon_goldg21',
    label = 'Goldg21',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_goldglock`] = {
    name = 'weapon_goldglock',
    label = 'Goldglock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_goldkobra`] = {
    name = 'weapon_goldkobra',
    label = 'Goldkobra',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_goldmakarov`] = {
    name = 'weapon_goldmakarov',
    label = 'Goldmakarov',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_golfclub`] == nil then
    QBShared.Weapons[`weapon_golfclub`] = {
        name = 'weapon_golfclub',
        label = 'Golf Club',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_greenlightsaber`] = {
    name = 'weapon_greenlightsaber',
    label = 'Greenlightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_greenreaper`] = {
    name = 'weapon_greenreaper',
    label = 'Greenreaper',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_grenade`] == nil then
    QBShared.Weapons[`weapon_grenade`] = {
        name = 'weapon_grenade',
        label = 'Grenade',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

if QBShared.Weapons[`weapon_grenadelauncher`] == nil then
    QBShared.Weapons[`weapon_grenadelauncher`] = {
        name = 'weapon_grenadelauncher',
        label = 'Grenade Launcher',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_GRENADELAUNCHER',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

QBShared.Weapons[`weapon_greyg17`] = {
    name = 'weapon_greyg17',
    label = 'Greyg17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_gspc`] = {
    name = 'weapon_gspc',
    label = 'Gspc',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_gusenberg`] == nil then
    QBShared.Weapons[`weapon_gusenberg`] = {
        name = 'weapon_gusenberg',
        label = 'Gusenberg',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_MG',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

QBShared.Weapons[`weapon_halloweenglock`] = {
    name = 'weapon_halloweenglock',
    label = 'Halloween Glock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_halloweenlightsaber`] = {
    name = 'weapon_halloweenlightsaber',
    label = 'Halloween Lightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_hammer`] == nil then
    QBShared.Weapons[`weapon_hammer`] = {
        name = 'weapon_hammer',
        label = 'Hammer',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

if QBShared.Weapons[`weapon_hatchet`] == nil then
    QBShared.Weapons[`weapon_hatchet`] = {
        name = 'weapon_hatchet',
        label = 'Hatchet',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_hazardar`] = {
    name = 'weapon_hazardar',
    label = 'Hazardar',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_hazardcan`] == nil then
    QBShared.Weapons[`weapon_hazardcan`] = {
        name = 'weapon_hazardcan',
        label = 'Hazard Can',
        weapontype = 'Miscellaneous',
        ammotype = 'AMMO_HAZARDCAN',
        damagereason = 'Died',
    }
end

QBShared.Weapons[`weapon_heartbat`] = {
    name = 'weapon_heartbat',
    label = 'Heartbat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_heartknife`] = {
    name = 'weapon_heartknife',
    label = 'Heartknife',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_heavypistol`] == nil then
    QBShared.Weapons[`weapon_heavypistol`] = {
        name = 'weapon_heavypistol',
        label = 'Heavy Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

if QBShared.Weapons[`weapon_heavyrifle`] == nil then
    QBShared.Weapons[`weapon_heavyrifle`] = {
        name = 'weapon_heavyrifle',
        label = 'Heavy Rifle',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

if QBShared.Weapons[`weapon_heavyshotgun`] == nil then
    QBShared.Weapons[`weapon_heavyshotgun`] = {
        name = 'weapon_heavyshotgun',
        label = 'Heavy Shotgun',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

if QBShared.Weapons[`weapon_heavysniper`] == nil then
    QBShared.Weapons[`weapon_heavysniper`] = {
        name = 'weapon_heavysniper',
        label = 'Heavy Sniper',
        weapontype = 'Sniper Rifle',
        ammotype = 'AMMO_SNIPER',
        damagereason = 'Sniped / Picked off / Scoped',
    }
end

if QBShared.Weapons[`weapon_heavysniper_mk2`] == nil then
    QBShared.Weapons[`weapon_heavysniper_mk2`] = {
        name = 'weapon_heavysniper_mk2',
        label = 'Heavy Sniper MK2',
        weapontype = 'Sniper Rifle',
        ammotype = 'AMMO_SNIPER',
        damagereason = 'Sniped / Picked off / Scoped',
    }
end

QBShared.Weapons[`weapon_heavysniper_mk2_darkmatter`] = {
    name = 'weapon_heavysniper_mk2_darkmatter',
    label = 'Heavysniper Mk2 Darkmatter',
    weapontype = 'Sniper Rifle',
    ammotype = 'AMMO_SNIPER',
    damagereason = 'Sniped / Picked off / Scoped',
}

QBShared.Weapons[`weapon_hellokittyswitchv1bydaie`] = {
    name = 'weapon_hellokittyswitchv1bydaie',
    label = 'Hello Kitty Glock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_hellokittyswitchv2bydaie`] = {
    name = 'weapon_hellokittyswitchv2bydaie',
    label = 'Hello Kitty Switch V2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_hellokittyswitchv3bydaie`] = {
    name = 'weapon_hellokittyswitchv3bydaie',
    label = 'Hello Kitty Switch V3',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_hk45`] = {
    name = 'weapon_hk45',
    label = 'Hk45',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_hk516v2`] = {
    name = 'weapon_hk516v2',
    label = 'Hk516v2',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_hkarp`] = {
    name = 'weapon_hkarp',
    label = 'Hkarp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_hominglauncher`] == nil then
    QBShared.Weapons[`weapon_hominglauncher`] = {
        name = 'weapon_hominglauncher',
        label = 'Homing Launcher',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_RPG',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

QBShared.Weapons[`weapon_honeybadger`] = {
    name = 'weapon_honeybadger',
    label = 'Honeybadger',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_hotdogbat`] = {
    name = 'weapon_hotdogbat',
    label = 'Hotdogbat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_htcherryap`] = {
    name = 'weapon_htcherryap',
    label = 'Htcherryap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_htfourth`] = {
    name = 'weapon_htfourth',
    label = 'Htfourth',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_htfourthap`] = {
    name = 'weapon_htfourthap',
    label = 'Htfourthap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_iceaxe`] = {
    name = 'weapon_iceaxe',
    label = 'Iceaxe',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_icedg19`] = {
    name = 'weapon_icedg19',
    label = 'Icedg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_icedmpa`] = {
    name = 'weapon_icedmpa',
    label = 'Icedmpa',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_iceglockv2`] = {
    name = 'weapon_iceglockv2',
    label = 'Iceglockv2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_iceicle`] = {
    name = 'weapon_iceicle',
    label = 'Iceicle',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_interstellarglock`] = {
    name = 'weapon_interstellarglock',
    label = 'Interstellarglock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_iridescent39`] = {
    name = 'weapon_iridescent39',
    label = 'Iridescent39',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_jasonakv1bydaie`] = {
    name = 'weapon_jasonakv1bydaie',
    label = 'Jason AK v1',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_jaydesmp40`] = {
    name = 'weapon_jaydesmp40',
    label = 'Jaydesmp40',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_kaalbsp`] = {
    name = 'weapon_kaalbsp',
    label = 'Kaalbsp',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kaalfarp`] = {
    name = 'weapon_kaalfarp',
    label = 'Kaalfarp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_kaalfaug`] = {
    name = 'weapon_kaalfaug',
    label = 'Kaalfaug',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_SMG',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_kaalfd3switch`] = {
    name = 'weapon_kaalfd3switch',
    label = 'Kaalfd3switch',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kaalfgrau`] = {
    name = 'weapon_kaalfgrau',
    label = 'Kaalfgrau',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_SMG',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_kaalfgrip`] = {
    name = 'weapon_kaalfgrip',
    label = 'Kaalfgrip',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kaalfkeltec`] = {
    name = 'weapon_kaalfkeltec',
    label = 'Kaalfkeltec',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kaalfmk2`] = {
    name = 'weapon_kaalfmk2',
    label = 'Kaalfmk2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kaalfp90`] = {
    name = 'weapon_kaalfp90',
    label = 'Kaalfp90',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_kaalfscar`] = {
    name = 'weapon_kaalfscar',
    label = 'Kaalfscar',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_kaalfshellcatcher`] = {
    name = 'weapon_kaalfshellcatcher',
    label = 'Kaalfshellcatcher',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kaalfstriker`] = {
    name = 'weapon_kaalfstriker',
    label = 'Kaalfstriker',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kaalfsword`] = {
    name = 'weapon_kaalfsword',
    label = 'Kaalfsword',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_kaalfsythe`] = {
    name = 'weapon_kaalfsythe',
    label = 'Kaalfsythe',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_kaalftec9`] = {
    name = 'weapon_kaalftec9',
    label = 'Kaalftec9',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_kaalfx13`] = {
    name = 'weapon_kaalfx13',
    label = 'Kaalfx13',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kaalram98`] = {
    name = 'weapon_kaalram98',
    label = 'Kaalram98',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kajszs`] = {
    name = 'weapon_kajszs',
    label = 'Kajszs',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kc`] = {
    name = 'weapon_kc',
    label = 'Kc',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_keltec`] = {
    name = 'weapon_keltec',
    label = 'Keltec',
    weapontype = 'Pistol',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_keltecpmr30`] = {
    name = 'weapon_keltecpmr30',
    label = 'Keltecpmr30',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kikesgravedigga`] = {
    name = 'weapon_kikesgravedigga',
    label = 'Kikesgravedigga',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_kissar`] = {
    name = 'weapon_kissar',
    label = 'Kissar',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_knife`] == nil then
    QBShared.Weapons[`weapon_knife`] = {
        name = 'weapon_knife',
        label = 'Knife',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_knife_vortex`] = {
    name = 'weapon_knife_vortex',
    label = 'Knife Vortex',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_knuckle`] == nil then
    QBShared.Weapons[`weapon_knuckle`] = {
        name = 'weapon_knuckle',
        label = 'Knuckle Dusters',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_knuckle_darkmatter`] = {
    name = 'weapon_knuckle_darkmatter',
    label = 'Knuckle Darkmatter',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_ktplr`] = {
    name = 'weapon_ktplr',
    label = 'Ktplr',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_kvec`] = {
    name = 'weapon_kvec',
    label = 'Kvec',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_kvr`] = {
    name = 'weapon_kvr',
    label = 'Kvr',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kyreearp`] = {
    name = 'weapon_kyreearp',
    label = 'Kyreearp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_kyreebat`] = {
    name = 'weapon_kyreebat',
    label = 'Kyreebat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_kyreeg19`] = {
    name = 'weapon_kyreeg19',
    label = 'Kyreeg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_kyreemp5`] = {
    name = 'weapon_kyreemp5',
    label = 'Kyreemp5',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_kyreesg`] = {
    name = 'weapon_kyreesg',
    label = 'Kyreesg',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_lavag19`] = {
    name = 'weapon_lavag19',
    label = 'Lavag19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_leatherfaceakv1bydaie`] = {
    name = 'weapon_leatherfaceakv1bydaie',
    label = 'Leatherface AK v1',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lifestylefx16`] = {
    name = 'weapon_lifestylefx16',
    label = 'Lifestylefx16',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lifestylex16`] = {
    name = 'weapon_lifestylex16',
    label = 'Lifestylex16',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lightingg17attach`] = {
    name = 'weapon_lightingg17attach',
    label = 'Lightingg17attach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_limeholoar`] = {
    name = 'weapon_limeholoar',
    label = 'Limeholoar',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_limekatana`] = {
    name = 'weapon_limekatana',
    label = 'Limekatana',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsargentinaattach`] = {
    name = 'weapon_lsargentinaattach',
    label = 'Lsargentinaattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsauracombat`] = {
    name = 'weapon_lsauracombat',
    label = 'Auracombat',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_lsauradagger`] = {
    name = 'weapon_lsauradagger',
    label = 'Auradagger',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsauragrau`] = {
    name = 'weapon_lsauragrau',
    label = 'Auragrau',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_SMG',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lsaurashotty`] = {
    name = 'weapon_lsaurashotty',
    label = 'Aurashotty',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_lsaxeofgods`] = {
    name = 'weapon_lsaxeofgods',
    label = 'Axeofgods',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsbaddies2`] = {
    name = 'weapon_lsbaddies2',
    label = 'Baddies2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsbaddiesg19`] = {
    name = 'weapon_lsbaddiesg19',
    label = 'Baddiesg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsbaddiess1`] = {
    name = 'weapon_lsbaddiess1',
    label = 'Baddiess1',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsbblg17`] = {
    name = 'weapon_lsbblg17',
    label = 'Bblg17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsbeachump`] = {
    name = 'weapon_lsbeachump',
    label = 'Beachump',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_lsbflowerg19`] = {
    name = 'weapon_lsbflowerg19',
    label = 'Bflowerg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsbhmcg`] = {
    name = 'weapon_lsbhmcg',
    label = 'Bhmcg',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsbhmg21`] = {
    name = 'weapon_lsbhmg21',
    label = 'Bhmg21',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsbloodynights`] = {
    name = 'weapon_lsbloodynights',
    label = 'Bloodynights',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsbluechrome`] = {
    name = 'weapon_lsbluechrome',
    label = 'Bluechrome',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsbluesaber`] = {
    name = 'weapon_lsbluesaber',
    label = 'Bluesaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsbrg17`] = {
    name = 'weapon_lsbrg17',
    label = 'Brg17',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lsbyg17`] = {
    name = 'weapon_lsbyg17',
    label = 'Byg17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsc19grip`] = {
    name = 'weapon_lsc19grip',
    label = 'C19grip',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscamoattach`] = {
    name = 'weapon_lscamoattach',
    label = 'Camoattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscamog22`] = {
    name = 'weapon_lscamog22',
    label = 'Camog22',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscamomp5`] = {
    name = 'weapon_lscamomp5',
    label = 'Camomp5',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_lscandyaxe`] = {
    name = 'weapon_lscandyaxe',
    label = 'Candyaxe',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lschclock`] = {
    name = 'weapon_lschclock',
    label = 'Chclock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscherryarp`] = {
    name = 'weapon_lscherryarp',
    label = 'Cherryarp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lscherrybadger`] = {
    name = 'weapon_lscherrybadger',
    label = 'Lscherrybadger',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lscherryblossomst`] = {
    name = 'weapon_lscherryblossomst',
    label = 'Lscherryblossomst',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lschromeattach`] = {
    name = 'weapon_lschromeattach',
    label = 'Chromeattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lschromefnx`] = {
    name = 'weapon_lschromefnx',
    label = 'Chromefnx',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lschromegripg22`] = {
    name = 'weapon_lschromegripg22',
    label = 'Chromegripg22',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lschrometec`] = {
    name = 'weapon_lschrometec',
    label = 'Chrometec',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lschromnesawoff`] = {
    name = 'weapon_lschromnesawoff',
    label = 'Chromnesawoff',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_lscloudyg19`] = {
    name = 'weapon_lscloudyg19',
    label = 'Cloudyg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscloudyg22`] = {
    name = 'weapon_lscloudyg22',
    label = 'Lscloudyg22',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscosmicglock`] = {
    name = 'weapon_lscosmicglock',
    label = 'Cosmicglock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscrackedg19`] = {
    name = 'weapon_lscrackedg19',
    label = 'Crackedg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscredgripg17`] = {
    name = 'weapon_lscredgripg17',
    label = 'Credgripg17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscustomgoldg17`] = {
    name = 'weapon_lscustomgoldg17',
    label = 'Customgoldg17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lscyberbal27`] = {
    name = 'weapon_lscyberbal27',
    label = 'Cyberbal27',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lsdamascusc17`] = {
    name = 'weapon_lsdamascusc17',
    label = 'Damascusc17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsdiamondfn57`] = {
    name = 'weapon_lsdiamondfn57',
    label = 'Lsdiamondfn57',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsdragonborn`] = {
    name = 'weapon_lsdragonborn',
    label = 'Lsdragonborn',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lseasterclock`] = {
    name = 'weapon_lseasterclock',
    label = 'Easterclock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lseasterpickaxe`] = {
    name = 'weapon_lseasterpickaxe',
    label = 'Easterpickaxe',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lselitecleat`] = {
    name = 'weapon_lselitecleat',
    label = 'Elitecleat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsfncsaxe`] = {
    name = 'weapon_lsfncsaxe',
    label = 'Fncsaxe',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsfngflex`] = {
    name = 'weapon_lsfngflex',
    label = 'Fngflex',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsfnx45p`] = {
    name = 'weapon_lsfnx45p',
    label = 'Fnx45p',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsfnx45r`] = {
    name = 'weapon_lsfnx45r',
    label = 'Fnx45r',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsfranceattach`] = {
    name = 'weapon_lsfranceattach',
    label = 'Lsfranceattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsg17c`] = {
    name = 'weapon_lsg17c',
    label = 'G17c',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsg17x`] = {
    name = 'weapon_lsg17x',
    label = 'G17x',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsg19g4`] = {
    name = 'weapon_lsg19g4',
    label = 'G19g4',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsg19void`] = {
    name = 'weapon_lsg19void',
    label = 'G19void',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsg19xj`] = {
    name = 'weapon_lsg19xj',
    label = 'G19xj',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsg19xp`] = {
    name = 'weapon_lsg19xp',
    label = 'G19xp',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsg21red`] = {
    name = 'weapon_lsg21red',
    label = 'G21red',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsg26p80c`] = {
    name = 'weapon_lsg26p80c',
    label = 'G26p80c',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsgalaxycg`] = {
    name = 'weapon_lsgalaxycg',
    label = 'Galaxycg',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsgalaxyfn502`] = {
    name = 'weapon_lsgalaxyfn502',
    label = 'Galaxyfn502',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsgara`] = {
    name = 'weapon_lsgara',
    label = 'Gara',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsghost1`] = {
    name = 'weapon_lsghost1',
    label = 'Ghost1',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsghost2`] = {
    name = 'weapon_lsghost2',
    label = 'Ghost2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsglightingvector`] = {
    name = 'weapon_lsglightingvector',
    label = 'Glightingvector',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_lsgoldak`] = {
    name = 'weapon_lsgoldak',
    label = 'Goldak',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_SMG',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lsgoldbapegrip`] = {
    name = 'weapon_lsgoldbapegrip',
    label = 'Goldbapegrip',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsgraffitiattach`] = {
    name = 'weapon_lsgraffitiattach',
    label = 'Graffitiattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsgraffitimpl`] = {
    name = 'weapon_lsgraffitimpl',
    label = 'Graffitimpl',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_lsgreenkeltec`] = {
    name = 'weapon_lsgreenkeltec',
    label = 'Greenkeltec',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsgreensaber`] = {
    name = 'weapon_lsgreensaber',
    label = 'Greensaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lshazardg17`] = {
    name = 'weapon_lshazardg17',
    label = 'Hazardg17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lshinata`] = {
    name = 'weapon_lshinata',
    label = 'Hinata',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lshollownights`] = {
    name = 'weapon_lshollownights',
    label = 'Lshollownights',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsicebreaker`] = {
    name = 'weapon_lsicebreaker',
    label = 'Icebreaker',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsicedspazz12`] = {
    name = 'weapon_lsicedspazz12',
    label = 'Icedspazz12',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_lsinfectedknife`] = {
    name = 'weapon_lsinfectedknife',
    label = 'Infectedknife',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsiric19`] = {
    name = 'weapon_lsiric19',
    label = 'Iric19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsirmac10`] = {
    name = 'weapon_lsirmac10',
    label = 'Irmac10',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_lsjamaicanattach`] = {
    name = 'weapon_lsjamaicanattach',
    label = 'Lsjamaicanattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lskarambit`] = {
    name = 'weapon_lskarambit',
    label = 'Lskarambit',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lskeltec`] = {
    name = 'weapon_lskeltec',
    label = 'Keltec',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lslavadraco`] = {
    name = 'weapon_lslavadraco',
    label = 'Lavadraco',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lsleopardg19`] = {
    name = 'weapon_lsleopardg19',
    label = 'Leopardg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lslightingp320`] = {
    name = 'weapon_lslightingp320',
    label = 'Lightingp320',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsm16`] = {
    name = 'weapon_lsm16',
    label = 'M16',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lsmagmacg`] = {
    name = 'weapon_lsmagmacg',
    label = 'Magmacg',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsmarbleclock`] = {
    name = 'weapon_lsmarbleclock',
    label = 'Marbleclock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsmat4`] = {
    name = 'weapon_lsmat4',
    label = 'Mat4',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsmexicoattach`] = {
    name = 'weapon_lsmexicoattach',
    label = 'Lsmexicoattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsmp5sup`] = {
    name = 'weapon_lsmp5sup',
    label = 'Mp5sup',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_lsnebulag19x`] = {
    name = 'weapon_lsnebulag19x',
    label = 'Nebulag19x',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsoceancombat`] = {
    name = 'weapon_lsoceancombat',
    label = 'Oceancombat',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_lsogtec9`] = {
    name = 'weapon_lsogtec9',
    label = 'Ogtec9',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_lsorangechrome`] = {
    name = 'weapon_lsorangechrome',
    label = 'Orangechrome',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsp420`] = {
    name = 'weapon_lsp420',
    label = 'P420',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspersylightning`] = {
    name = 'weapon_lspersylightning',
    label = 'Persylightning',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspflowerg19`] = {
    name = 'weapon_lspflowerg19',
    label = 'Pflowerg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspinkattach`] = {
    name = 'weapon_lspinkattach',
    label = 'Pinkattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspinkcloud`] = {
    name = 'weapon_lspinkcloud',
    label = 'Pinkcloud',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspleopardg19`] = {
    name = 'weapon_lspleopardg19',
    label = 'Pleopardg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspmatrix`] = {
    name = 'weapon_lspmatrix',
    label = 'Pmatrix',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspqueen`] = {
    name = 'weapon_lspqueen',
    label = 'Pqueen',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspurpchromedagger`] = {
    name = 'weapon_lspurpchromedagger',
    label = 'Purpchromedagger',
    weapontype = 'Melee',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lspurplebg`] = {
    name = 'weapon_lspurplebg',
    label = 'Purplebg',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspurplecg19`] = {
    name = 'weapon_lspurplecg19',
    label = 'Purplecg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lspurplesaber`] = {
    name = 'weapon_lspurplesaber',
    label = 'Purplesaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lspurptigermp5`] = {
    name = 'weapon_lspurptigermp5',
    label = 'Lspurptigermp5',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_lsr4c`] = {
    name = 'weapon_lsr4c',
    label = 'R4c',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lsrainbowsmash`] = {
    name = 'weapon_lsrainbowsmash',
    label = 'Rainbowsmash',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsredbone`] = {
    name = 'weapon_lsredbone',
    label = 'Redbone',
    weapontype = 'Melee',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsredcamogrip`] = {
    name = 'weapon_lsredcamogrip',
    label = 'Redcamogrip',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsredgalaxyg19x`] = {
    name = 'weapon_lsredgalaxyg19x',
    label = 'Redgalaxyg19x',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsredp320`] = {
    name = 'weapon_lsredp320',
    label = 'Redp320',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsredsaber`] = {
    name = 'weapon_lsredsaber',
    label = 'Redsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsrevengemosin`] = {
    name = 'weapon_lsrevengemosin',
    label = 'Revengemosin',
    weapontype = 'Sniper Rifle',
    ammotype = 'AMMO_SNIPER',
    damagereason = 'Sniped / Picked off / Scoped',
}

QBShared.Weapons[`weapon_lsrubyattach`] = {
    name = 'weapon_lsrubyattach',
    label = 'Rubyattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsrubydraco`] = {
    name = 'weapon_lsrubydraco',
    label = 'Rubydraco',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lsrubysawnoff`] = {
    name = 'weapon_lsrubysawnoff',
    label = 'Rubysawnoff',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_lsrubytec`] = {
    name = 'weapon_lsrubytec',
    label = 'Rubytec',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lssawnoff`] = {
    name = 'weapon_lssawnoff',
    label = 'Sawnoff',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_lssemidraco`] = {
    name = 'weapon_lssemidraco',
    label = 'Semidraco',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lsskull`] = {
    name = 'weapon_lsskull',
    label = 'Skull',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsslimegripg17`] = {
    name = 'weapon_lsslimegripg17',
    label = 'Slimegripg17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsslingshot`] = {
    name = 'weapon_lsslingshot',
    label = 'Slingshot',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsspainattach`] = {
    name = 'weapon_lsspainattach',
    label = 'Lsspainattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsspeedy`] = {
    name = 'weapon_lsspeedy',
    label = 'Speedy',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsspringg19`] = {
    name = 'weapon_lsspringg19',
    label = 'Springg19',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsstarwand`] = {
    name = 'weapon_lsstarwand',
    label = 'Starwand',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsstellarstriker`] = {
    name = 'weapon_lsstellarstriker',
    label = 'Stellarstriker',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_lsstickerkeltec`] = {
    name = 'weapon_lsstickerkeltec',
    label = 'Lsstickerkeltec',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsstpat2`] = {
    name = 'weapon_lsstpat2',
    label = 'Stpat2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsstpatc`] = {
    name = 'weapon_lsstpatc',
    label = 'Stpatc',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsstpatg22`] = {
    name = 'weapon_lsstpatg22',
    label = 'Stpatg22',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lssummerg20`] = {
    name = 'weapon_lssummerg20',
    label = 'Summerg20',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lssupri`] = {
    name = 'weapon_lssupri',
    label = 'Supri',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_lstanto`] = {
    name = 'weapon_lstanto',
    label = 'Tanto',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lstoji`] = {
    name = 'weapon_lstoji',
    label = 'Toji',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsusaattach`] = {
    name = 'weapon_lsusaattach',
    label = 'Lsusaattach',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsval1`] = {
    name = 'weapon_lsval1',
    label = 'Val1',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lsval2`] = {
    name = 'weapon_lsval2',
    label = 'Val2',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lswhitebg`] = {
    name = 'weapon_lswhitebg',
    label = 'Whitebg',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_luckyap`] = {
    name = 'weapon_luckyap',
    label = 'Luckyap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_lvak`] = {
    name = 'weapon_lvak',
    label = 'Lvak',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_m16ns`] = {
    name = 'weapon_m16ns',
    label = 'M16ns',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_ma3`] = {
    name = 'weapon_ma3',
    label = 'Ma3',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_mac10`] = {
    name = 'weapon_mac10',
    label = 'Mac10',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_machete`] == nil then
    QBShared.Weapons[`weapon_machete`] = {
        name = 'weapon_machete',
        label = 'Machete',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_machette_retropixel`] = {
    name = 'weapon_machette_retropixel',
    label = 'Machette Retropixel',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_machette_starkiller`] = {
    name = 'weapon_machette_starkiller',
    label = 'Machette Starkiller',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_machinepistol`] == nil then
    QBShared.Weapons[`weapon_machinepistol`] = {
        name = 'weapon_machinepistol',
        label = 'Machine Pistol',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_SMG',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

QBShared.Weapons[`weapon_machinepistol_graveyard`] = {
    name = 'weapon_machinepistol_graveyard',
    label = 'Machinepistol Graveyard',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_machinepistol_vortex`] = {
    name = 'weapon_machinepistol_vortex',
    label = 'Machinepistol Vortex',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_magmamr920p`] = {
    name = 'weapon_magmamr920p',
    label = 'Magmamr920p',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_marksmanpistol`] == nil then
    QBShared.Weapons[`weapon_marksmanpistol`] = {
        name = 'weapon_marksmanpistol',
        label = 'Marksman Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

if QBShared.Weapons[`weapon_marksmanrifle`] == nil then
    QBShared.Weapons[`weapon_marksmanrifle`] = {
        name = 'weapon_marksmanrifle',
        label = 'Marksman Rifle',
        weapontype = 'Sniper Rifle',
        ammotype = 'AMMO_SNIPER',
        damagereason = 'Sniped / Picked off / Scoped',
    }
end

if QBShared.Weapons[`weapon_marksmanrifle_mk2`] == nil then
    QBShared.Weapons[`weapon_marksmanrifle_mk2`] = {
        name = 'weapon_marksmanrifle_mk2',
        label = 'Marksman Rifle MK2',
        weapontype = 'Sniper Rifle',
        ammotype = 'AMMO_SNIPER',
        damagereason = 'Sniped / Picked off / Scoped',
    }
end

QBShared.Weapons[`weapon_master_sr47`] = {
    name = 'weapon_master_sr47',
    label = 'Master Sr47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_mcx`] = {
    name = 'weapon_mcx',
    label = 'Mcx',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_mdak47`] = {
    name = 'weapon_mdak47',
    label = 'Mdak47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_mdw_arp`] = {
    name = 'weapon_mdw_arp',
    label = 'Mdw Arp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_mdw_bat`] = {
    name = 'weapon_mdw_bat',
    label = 'Mdw Bat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_mdw_sr47`] = {
    name = 'weapon_mdw_sr47',
    label = 'Mdw Sr47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_mealstromrr`] = {
    name = 'weapon_mealstromrr',
    label = 'Mealstromrr',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_mealstromrrv2`] = {
    name = 'weapon_mealstromrrv2',
    label = 'Mealstromrrv2',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

if QBShared.Weapons[`weapon_metaldetector`] == nil then
    QBShared.Weapons[`weapon_metaldetector`] = {
        name = 'weapon_metaldetector',
        label = 'Metal Detector',
        weapontype = 'Miscellaneous',
        ammotype = nil,
        damagereason = 'Died',
    }
end

QBShared.Weapons[`weapon_mfourthbat`] = {
    name = 'weapon_mfourthbat',
    label = 'Mfourthbat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_mfourthiso`] = {
    name = 'weapon_mfourthiso',
    label = 'Mfourthiso',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_mfourthwire`] = {
    name = 'weapon_mfourthwire',
    label = 'Mfourthwire',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_mg`] == nil then
    QBShared.Weapons[`weapon_mg`] = {
        name = 'weapon_mg',
        label = 'Machine Gun',
        weapontype = 'Light Machine Gun',
        ammotype = 'AMMO_MG',
        damagereason = 'Machine gunned / Sprayed / Ruined',
    }
end

if QBShared.Weapons[`weapon_microsmg`] == nil then
    QBShared.Weapons[`weapon_microsmg`] = {
        name = 'weapon_microsmg',
        label = 'Micro SMG',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_SMG',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

QBShared.Weapons[`weapon_microsmg_darkmatter`] = {
    name = 'weapon_microsmg_darkmatter',
    label = 'Microsmg Darkmatter',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_microsmg_irondust`] = {
    name = 'weapon_microsmg_irondust',
    label = 'Microsmg Irondust',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_mikemyersakv1bydaie`] = {
    name = 'weapon_mikemyersakv1bydaie',
    label = 'Mike Myers AK v1',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_mikemyersswitchv1bydaie`] = {
    name = 'weapon_mikemyersswitchv1bydaie',
    label = 'Mike Myers Glock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_militaryrifle`] == nil then
    QBShared.Weapons[`weapon_militaryrifle`] = {
        name = 'weapon_militaryrifle',
        label = 'Military Rifle',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

if QBShared.Weapons[`weapon_minigun`] == nil then
    QBShared.Weapons[`weapon_minigun`] = {
        name = 'weapon_minigun',
        label = 'Minigun',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_MINIGUN',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

if QBShared.Weapons[`weapon_minismg`] == nil then
    QBShared.Weapons[`weapon_minismg`] = {
        name = 'weapon_minismg',
        label = 'Mini SMG',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_SMG',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

QBShared.Weapons[`weapon_mk2_halloween`] = {
    name = 'weapon_mk2_halloween',
    label = 'Halloween MK2',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_mm1`] = {
    name = 'weapon_mm1',
    label = 'Mm1',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_mm10`] = {
    name = 'weapon_mm10',
    label = 'Mm10',
    weapontype = 'Sniper Rifle',
    ammotype = 'AMMO_SNIPER',
    damagereason = 'Sniped / Picked off / Scoped',
}

QBShared.Weapons[`weapon_mm2`] = {
    name = 'weapon_mm2',
    label = 'Mm2',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_mm3`] = {
    name = 'weapon_mm3',
    label = 'Mm3',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_mm4`] = {
    name = 'weapon_mm4',
    label = 'Mm4',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_mm5`] = {
    name = 'weapon_mm5',
    label = 'Mm5',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_mm6`] = {
    name = 'weapon_mm6',
    label = 'Mm6',
    weapontype = 'Sniper Rifle',
    ammotype = 'AMMO_SNIPER',
    damagereason = 'Sniped / Picked off / Scoped',
}

QBShared.Weapons[`weapon_mm7`] = {
    name = 'weapon_mm7',
    label = 'Mm7',
    weapontype = 'Sniper Rifle',
    ammotype = 'AMMO_SNIPER',
    damagereason = 'Sniped / Picked off / Scoped',
}

QBShared.Weapons[`weapon_mm8`] = {
    name = 'weapon_mm8',
    label = 'Mm8',
    weapontype = 'Sniper Rifle',
    ammotype = 'AMMO_SNIPER',
    damagereason = 'Sniped / Picked off / Scoped',
}

QBShared.Weapons[`weapon_mm9`] = {
    name = 'weapon_mm9',
    label = 'Mm9',
    weapontype = 'Sniper Rifle',
    ammotype = 'AMMO_SNIPER',
    damagereason = 'Sniped / Picked off / Scoped',
}

if QBShared.Weapons[`weapon_molotov`] == nil then
    QBShared.Weapons[`weapon_molotov`] = {
        name = 'weapon_molotov',
        label = 'Molotov',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

QBShared.Weapons[`weapon_motion`] = {
    name = 'weapon_motion',
    label = 'Motion',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_mpa10`] = {
    name = 'weapon_mpa10',
    label = 'Mpa10',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_mpc`] = {
    name = 'weapon_mpc',
    label = 'Mpc',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_musket`] == nil then
    QBShared.Weapons[`weapon_musket`] = {
        name = 'weapon_musket',
        label = 'Musket',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

if QBShared.Weapons[`weapon_navyrevolver`] == nil then
    QBShared.Weapons[`weapon_navyrevolver`] = {
        name = 'weapon_navyrevolver',
        label = 'Navy Revolver',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

if QBShared.Weapons[`weapon_nightstick`] == nil then
    QBShared.Weapons[`weapon_nightstick`] = {
        name = 'weapon_nightstick',
        label = 'Nightstick',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_orangelightsaber`] = {
    name = 'weapon_orangelightsaber',
    label = 'Orangelightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_orangereaper`] = {
    name = 'weapon_orangereaper',
    label = 'Orangereaper',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_ovofrostg26`] = {
    name = 'weapon_ovofrostg26',
    label = 'Ovofrostg26',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_ovolightsgx16`] = {
    name = 'weapon_ovolightsgx16',
    label = 'Ovolightsgx16',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_ovominiaxe`] = {
    name = 'weapon_ovominiaxe',
    label = 'Ovominiaxe',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_p88p`] = {
    name = 'weapon_p88p',
    label = 'P88p',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_p890`] = {
    name = 'weapon_p890',
    label = 'P890',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_palmtree`] = {
    name = 'weapon_palmtree',
    label = 'Palmtree',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_pbat`] = {
    name = 'weapon_pbat',
    label = 'Pbat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_pc`] = {
    name = 'weapon_pc',
    label = 'Pc',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_pdbaton`] = {
    name = 'weapon_pdbaton',
    label = 'Pdbaton',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_pdbr5`] = {
    name = 'weapon_pdbr5',
    label = 'Pdbr5',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_pdhk416`] = {
    name = 'weapon_pdhk416',
    label = 'Pdhk416',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_pdpt700`] = {
    name = 'weapon_pdpt700',
    label = 'Pdpt700',
    weapontype = 'Sniper Rifle',
    ammotype = 'AMMO_SNIPER',
    damagereason = 'Sniped / Picked off / Scoped',
}

QBShared.Weapons[`weapon_pdpt870`] = {
    name = 'weapon_pdpt870',
    label = 'Pdpt870',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_pencil`] = {
    name = 'weapon_pencil',
    label = 'Pencil',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_pennywiseakv1bydaie`] = {
    name = 'weapon_pennywiseakv1bydaie',
    label = 'Pennywise AK v1',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_petrolcan`] == nil then
    QBShared.Weapons[`weapon_petrolcan`] = {
        name = 'weapon_petrolcan',
        label = 'Jerry Can',
        weapontype = 'Miscellaneous',
        ammotype = 'AMMO_PETROLCAN',
        damagereason = 'Died',
    }
end

QBShared.Weapons[`weapon_phantomar`] = {
    name = 'weapon_phantomar',
    label = 'Phantomar',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_pimhalloween2026`] = {
    name = 'weapon_pimhalloween2026',
    label = 'PIM Halloween',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pinkdiamonddegale`] = {
    name = 'weapon_pinkdiamonddegale',
    label = 'Pinkdiamonddegale',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pinkdiamondg26`] = {
    name = 'weapon_pinkdiamondg26',
    label = 'Pinkdiamondg26',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pinkflame680`] = {
    name = 'weapon_pinkflame680',
    label = 'Pinkflame680',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_pinkglock`] = {
    name = 'weapon_pinkglock',
    label = 'Pinkglock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pinkkatana`] = {
    name = 'weapon_pinkkatana',
    label = 'Pinkkatana',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_pinklightsaber`] = {
    name = 'weapon_pinklightsaber',
    label = 'Pinklightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_pinkreaper`] = {
    name = 'weapon_pinkreaper',
    label = 'Pinkreaper',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pinkwire`] = {
    name = 'weapon_pinkwire',
    label = 'Pinkwire',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pinkwiresmg`] = {
    name = 'weapon_pinkwiresmg',
    label = 'Pinkwiresmg',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_pipebomb`] == nil then
    QBShared.Weapons[`weapon_pipebomb`] = {
        name = 'weapon_pipebomb',
        label = 'Pipe Bomb',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

if QBShared.Weapons[`weapon_pistol`] == nil then
    QBShared.Weapons[`weapon_pistol`] = {
        name = 'weapon_pistol',
        label = 'Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

if QBShared.Weapons[`weapon_pistol50`] == nil then
    QBShared.Weapons[`weapon_pistol50`] = {
        name = 'weapon_pistol50',
        label = 'Pistol .50',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_pistol50_kawai`] = {
    name = 'weapon_pistol50_kawai',
    label = 'Pistol50 Kawai',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pistol50_vortex`] = {
    name = 'weapon_pistol50_vortex',
    label = 'Pistol50 Vortex',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pistol_kawai`] = {
    name = 'weapon_pistol_kawai',
    label = 'Pistol Kawai',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_pistol_mk2`] == nil then
    QBShared.Weapons[`weapon_pistol_mk2`] = {
        name = 'weapon_pistol_mk2',
        label = 'Pistol MK2',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_pistol_mk2_irondust`] = {
    name = 'weapon_pistol_mk2_irondust',
    label = 'Pistol Mk2 Irondust',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pistol_steampunk`] = {
    name = 'weapon_pistol_steampunk',
    label = 'Pistol Steampunk',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pistolmk2_kawai`] = {
    name = 'weapon_pistolmk2_kawai',
    label = 'Pistolmk2 Kawai',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pistolmk2_vortex`] = {
    name = 'weapon_pistolmk2_vortex',
    label = 'Pistolmk2 Vortex',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_pistolxm3`] == nil then
    QBShared.Weapons[`weapon_pistolxm3`] = {
        name = 'weapon_pistolxm3',
        label = 'WM 29 Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

if QBShared.Weapons[`weapon_poolcue`] == nil then
    QBShared.Weapons[`weapon_poolcue`] = {
        name = 'weapon_poolcue',
        label = 'Pool Cue',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_portalpurple`] = {
    name = 'weapon_portalpurple',
    label = 'Portalpurple',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_ppgirlsswitchv1bydaie`] = {
    name = 'weapon_ppgirlsswitchv1bydaie',
    label = 'PP Girls Glock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_precisionrifle`] == nil then
    QBShared.Weapons[`weapon_precisionrifle`] = {
        name = 'weapon_precisionrifle',
        label = 'Precision Rifle',
        weapontype = 'Sniper Rifle',
        ammotype = 'AMMO_SNIPER',
        damagereason = 'Sniped / Picked off / Scoped',
    }
end

QBShared.Weapons[`weapon_prismaticak47`] = {
    name = 'weapon_prismaticak47',
    label = 'Prismaticak47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_prismaticbal27`] = {
    name = 'weapon_prismaticbal27',
    label = 'Prismaticbal27',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_SMG',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_prismaticdraco`] = {
    name = 'weapon_prismaticdraco',
    label = 'Prismaticdraco',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_prismaticfnx45`] = {
    name = 'weapon_prismaticfnx45',
    label = 'Prismaticfnx45',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_prismaticl85a2`] = {
    name = 'weapon_prismaticl85a2',
    label = 'Prismaticl85a2',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_SMG',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_prismaticm400`] = {
    name = 'weapon_prismaticm400',
    label = 'Prismaticm400',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_prismaticmp7a2`] = {
    name = 'weapon_prismaticmp7a2',
    label = 'Prismaticmp7a2',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_prismaticmxc`] = {
    name = 'weapon_prismaticmxc',
    label = 'Prismaticmxc',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_prismaticp80`] = {
    name = 'weapon_prismaticp80',
    label = 'Prismaticp80',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_prismaticplr`] = {
    name = 'weapon_prismaticplr',
    label = 'Prismaticplr',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_prismaticsbrarp`] = {
    name = 'weapon_prismaticsbrarp',
    label = 'Prismaticsbrarp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_prisomappistol`] = {
    name = 'weapon_prisomappistol',
    label = 'Prisomappistol',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_proxmine`] == nil then
    QBShared.Weapons[`weapon_proxmine`] = {
        name = 'weapon_proxmine',
        label = 'Proximity Mine',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

QBShared.Weapons[`weapon_pskele`] = {
    name = 'weapon_pskele',
    label = 'Pskele',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_pumpshotgun`] == nil then
    QBShared.Weapons[`weapon_pumpshotgun`] = {
        name = 'weapon_pumpshotgun',
        label = 'Pump Shotgun',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

if QBShared.Weapons[`weapon_pumpshotgun_mk2`] == nil then
    QBShared.Weapons[`weapon_pumpshotgun_mk2`] = {
        name = 'weapon_pumpshotgun_mk2',
        label = 'Pump Shotgun MK2',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

QBShared.Weapons[`weapon_purplekatana`] = {
    name = 'weapon_purplekatana',
    label = 'Purplekatana',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_purplelightsaber`] = {
    name = 'weapon_purplelightsaber',
    label = 'Purplelightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_purpleone`] = {
    name = 'weapon_purpleone',
    label = 'Purpleone',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_purplereaper`] = {
    name = 'weapon_purplereaper',
    label = 'Purplereaper',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_purplesext`] = {
    name = 'weapon_purplesext',
    label = 'Purplesext',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_pv2011`] = {
    name = 'weapon_pv2011',
    label = 'Pv2011',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_pvb2011`] = {
    name = 'weapon_pvb2011',
    label = 'Pvb2011',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_railgun`] == nil then
    QBShared.Weapons[`weapon_railgun`] = {
        name = 'weapon_railgun',
        label = 'Railgun',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_RAILGUN',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

if QBShared.Weapons[`weapon_railgunxm3`] == nil then
    QBShared.Weapons[`weapon_railgunxm3`] = {
        name = 'weapon_railgunxm3',
        label = 'Railgun XM3',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_RAILGUN',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

QBShared.Weapons[`weapon_rainbowsmash`] = {
    name = 'weapon_rainbowsmash',
    label = 'Rainbowsmash',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_raqssemi`] = {
    name = 'weapon_raqssemi',
    label = 'Raqssemi',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_raqswitchy`] = {
    name = 'weapon_raqswitchy',
    label = 'Raqswitchy',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_raycarbine`] == nil then
    QBShared.Weapons[`weapon_raycarbine`] = {
        name = 'weapon_raycarbine',
        label = 'Unholy Hellbringer',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

if QBShared.Weapons[`weapon_rayminigun`] == nil then
    QBShared.Weapons[`weapon_rayminigun`] = {
        name = 'weapon_rayminigun',
        label = 'Widowmaker',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_MINIGUN',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

if QBShared.Weapons[`weapon_raypistol`] == nil then
    QBShared.Weapons[`weapon_raypistol`] = {
        name = 'weapon_raypistol',
        label = 'Up-n-Atomizer',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_rbdiamond`] = {
    name = 'weapon_rbdiamond',
    label = 'Rbdiamond',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_realbread`] = {
    name = 'weapon_realbread',
    label = 'Realbread',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_reaper`] = {
    name = 'weapon_reaper',
    label = 'Reaper',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_redarpwstrap`] = {
    name = 'weapon_redarpwstrap',
    label = 'Redarpwstrap',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_redkatana`] = {
    name = 'weapon_redkatana',
    label = 'Redkatana',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_redlightsaber`] = {
    name = 'weapon_redlightsaber',
    label = 'Redlightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_revolver`] == nil then
    QBShared.Weapons[`weapon_revolver`] = {
        name = 'weapon_revolver',
        label = 'Revolver',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

if QBShared.Weapons[`weapon_revolver_mk2`] == nil then
    QBShared.Weapons[`weapon_revolver_mk2`] = {
        name = 'weapon_revolver_mk2',
        label = 'Revolver MK2',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_revolver_mk2_darkmatter`] = {
    name = 'weapon_revolver_mk2_darkmatter',
    label = 'Revolver Mk2 Darkmatter',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_revolver_mk2_starkiller`] = {
    name = 'weapon_revolver_mk2_starkiller',
    label = 'Revolver Mk2 Starkiller',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_rgxvandal`] = {
    name = 'weapon_rgxvandal',
    label = 'Rgxvandal',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_ropearp`] = {
    name = 'weapon_ropearp',
    label = 'Ropearp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_rosebat`] = {
    name = 'weapon_rosebat',
    label = 'Rosebat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_rosegolddraco`] = {
    name = 'weapon_rosegolddraco',
    label = 'Rosegolddraco',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_rpg`] == nil then
    QBShared.Weapons[`weapon_rpg`] = {
        name = 'weapon_rpg',
        label = 'RPG',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_RPG',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

QBShared.Weapons[`weapon_rsext`] = {
    name = 'weapon_rsext',
    label = 'Rsext',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_saiga9`] = {
    name = 'weapon_saiga9',
    label = 'Saiga9',
    weapontype = 'Shotgun',
    ammotype = 'AMMO_SHOTGUN',
    damagereason = 'Devastated / Pulverized / Shotgunned',
}

QBShared.Weapons[`weapon_saugmd`] = {
    name = 'weapon_saugmd',
    label = 'Saugmd',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_SMG',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_saugmdv2`] = {
    name = 'weapon_saugmdv2',
    label = 'Saugmdv2',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_SMG',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_sawakv1bydaie`] = {
    name = 'weapon_sawakv1bydaie',
    label = 'Saw AK v1',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_sawnoffshotgun`] == nil then
    QBShared.Weapons[`weapon_sawnoffshotgun`] = {
        name = 'weapon_sawnoffshotgun',
        label = 'Sawn Off Shotgun',
        weapontype = 'Shotgun',
        ammotype = 'AMMO_SHOTGUN',
        damagereason = 'Devastated / Pulverized / Shotgunned',
    }
end

QBShared.Weapons[`weapon_sbrarp`] = {
    name = 'weapon_sbrarp',
    label = 'Sbrarp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_scorp_halloween`] = {
    name = 'weapon_scorp_halloween',
    label = 'Halloween Scorpion',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_sharacg`] = {
    name = 'weapon_sharacg',
    label = 'Sharacg',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_sharacg20`] = {
    name = 'weapon_sharacg20',
    label = 'Sharacg20',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_sharag17c`] = {
    name = 'weapon_sharag17c',
    label = 'Sharag17c',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_sharkmachinepistol`] = {
    name = 'weapon_sharkmachinepistol',
    label = 'Sharkmachinepistol',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_sinisterpurp`] = {
    name = 'weapon_sinisterpurp',
    label = 'Sinisterpurp',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_sinisterred`] = {
    name = 'weapon_sinisterred',
    label = 'Sinisterred',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_slurpaxe`] = {
    name = 'weapon_slurpaxe',
    label = 'Slurpaxe',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

if QBShared.Weapons[`weapon_smg`] == nil then
    QBShared.Weapons[`weapon_smg`] = {
        name = 'weapon_smg',
        label = 'SMG',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_SMG',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

if QBShared.Weapons[`weapon_smg_mk2`] == nil then
    QBShared.Weapons[`weapon_smg_mk2`] = {
        name = 'weapon_smg_mk2',
        label = 'SMG Mk2',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_SMG',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

QBShared.Weapons[`weapon_smg_starkiller`] = {
    name = 'weapon_smg_starkiller',
    label = 'Smg Starkiller',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_smg_steampunk`] = {
    name = 'weapon_smg_steampunk',
    label = 'Smg Steampunk',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_smokegrenade`] == nil then
    QBShared.Weapons[`weapon_smokegrenade`] = {
        name = 'weapon_smokegrenade',
        label = 'Smoke Grenade',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

if QBShared.Weapons[`weapon_sniperrifle`] == nil then
    QBShared.Weapons[`weapon_sniperrifle`] = {
        name = 'weapon_sniperrifle',
        label = 'Sniper Rifle',
        weapontype = 'Sniper Rifle',
        ammotype = 'AMMO_SNIPER',
        damagereason = 'Sniped / Picked off / Scoped',
    }
end

if QBShared.Weapons[`weapon_snowball`] == nil then
    QBShared.Weapons[`weapon_snowball`] = {
        name = 'weapon_snowball',
        label = 'Snow Ball',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

if QBShared.Weapons[`weapon_snowlauncher`] == nil then
    QBShared.Weapons[`weapon_snowlauncher`] = {
        name = 'weapon_snowlauncher',
        label = 'Snowball Launcher',
        weapontype = 'Heavy Weapons',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Killed / Exploded / Obliterated / Destroyed',
    }
end

if QBShared.Weapons[`weapon_snspistol`] == nil then
    QBShared.Weapons[`weapon_snspistol`] = {
        name = 'weapon_snspistol',
        label = 'SNS Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

if QBShared.Weapons[`weapon_snspistol_mk2`] == nil then
    QBShared.Weapons[`weapon_snspistol_mk2`] = {
        name = 'weapon_snspistol_mk2',
        label = 'SNS Pistol MK2',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_sp320`] = {
    name = 'weapon_sp320',
    label = 'Sp320',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_specialcarbine`] == nil then
    QBShared.Weapons[`weapon_specialcarbine`] = {
        name = 'weapon_specialcarbine',
        label = 'Special Carbine',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

if QBShared.Weapons[`weapon_specialcarbine_mk2`] == nil then
    QBShared.Weapons[`weapon_specialcarbine_mk2`] = {
        name = 'weapon_specialcarbine_mk2',
        label = 'Special Carbine MK2',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

QBShared.Weapons[`weapon_specialcarbine_mk2_darkmatter`] = {
    name = 'weapon_specialcarbine_mk2_darkmatter',
    label = 'Specialcarbine Mk2 Darkmatter',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_specialcarbine_mk2_graveyard`] = {
    name = 'weapon_specialcarbine_mk2_graveyard',
    label = 'Specialcarbine Mk2 Graveyard',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_specialcarbine_mk2_irondust`] = {
    name = 'weapon_specialcarbine_mk2_irondust',
    label = 'Specialcarbine Mk2 Irondust',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_specialcarbine_mk2_kawai`] = {
    name = 'weapon_specialcarbine_mk2_kawai',
    label = 'Specialcarbine Mk2 Kawai',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_specialcarbine_mk2_retropixel`] = {
    name = 'weapon_specialcarbine_mk2_retropixel',
    label = 'Specialcarbine Mk2 Retropixel',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_specialcarbine_mk2_starkiller`] = {
    name = 'weapon_specialcarbine_mk2_starkiller',
    label = 'Specialcarbine Mk2 Starkiller',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_specialcarbine_mk2_steampunk`] = {
    name = 'weapon_specialcarbine_mk2_steampunk',
    label = 'Specialcarbine Mk2 Steampunk',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_specialcarbine_mk2_vortex`] = {
    name = 'weapon_specialcarbine_mk2_vortex',
    label = 'Specialcarbine Mk2 Vortex',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_specialfnx45`] = {
    name = 'weapon_specialfnx45',
    label = 'Specialfnx45',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_specialglock21`] = {
    name = 'weapon_specialglock21',
    label = 'Specialglock21',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_specialglock30`] = {
    name = 'weapon_specialglock30',
    label = 'Specialglock30',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_spectresmg`] = {
    name = 'weapon_spectresmg',
    label = 'Spectresmg',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_spiderap`] = {
    name = 'weapon_spiderap',
    label = 'Spiderap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_stickybomb`] == nil then
    QBShared.Weapons[`weapon_stickybomb`] = {
        name = 'weapon_stickybomb',
        label = 'Sticky Bomb',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

if QBShared.Weapons[`weapon_stone_hatchet`] == nil then
    QBShared.Weapons[`weapon_stone_hatchet`] = {
        name = 'weapon_stone_hatchet',
        label = 'Stone Hatchet',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_strikerg17`] = {
    name = 'weapon_strikerg17',
    label = 'Strikerg17',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_stungun`] == nil then
    QBShared.Weapons[`weapon_stungun`] = {
        name = 'weapon_stungun',
        label = 'Tazer',
        weapontype = 'Pistol',
        ammotype = nil,
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_sub_advanced`] = {
    name = 'weapon_sub_advanced',
    label = 'Sub Advanced',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_sub_smg`] = {
    name = 'weapon_sub_smg',
    label = 'Sub Smg',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_switch_halloween`] = {
    name = 'weapon_switch_halloween',
    label = 'Halloween Switch',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_switchblade`] == nil then
    QBShared.Weapons[`weapon_switchblade`] = {
        name = 'weapon_switchblade',
        label = 'Switchblade',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_switchblade_kawai`] = {
    name = 'weapon_switchblade_kawai',
    label = 'Switchblade Kawai',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_switchblade_vortex`] = {
    name = 'weapon_switchblade_vortex',
    label = 'Switchblade Vortex',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_t19xd`] = {
    name = 'weapon_t19xd',
    label = 'T19xd',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_tacticalrifle`] == nil then
    QBShared.Weapons[`weapon_tacticalrifle`] = {
        name = 'weapon_tacticalrifle',
        label = 'Tactical Rifle',
        weapontype = 'Assault Rifle',
        ammotype = 'AMMO_RIFLE',
        damagereason = 'Ended / Rifled / Shot down / Floored',
    }
end

QBShared.Weapons[`weapon_tandagger`] = {
    name = 'weapon_tandagger',
    label = 'Tandagger',
    weapontype = 'Melee',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_tang19x`] = {
    name = 'weapon_tang19x',
    label = 'Tang19x',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_tang23wing`] = {
    name = 'weapon_tang23wing',
    label = 'Tang23wing',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

if QBShared.Weapons[`weapon_teargas`] == nil then
    QBShared.Weapons[`weapon_teargas`] = {
        name = 'weapon_teargas',
        label = 'Tear Gas',
        weapontype = 'Throwable',
        ammotype = nil,
        damagereason = 'Bombed / Exploded / Detonated / Blew up',
    }
end

QBShared.Weapons[`weapon_tec9`] = {
    name = 'weapon_tec9',
    label = 'Tec9',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_tecpistol`] == nil then
    QBShared.Weapons[`weapon_tecpistol`] = {
        name = 'weapon_tecpistol',
        label = 'Tactical SMG',
        weapontype = 'Submachine Gun',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
    }
end

QBShared.Weapons[`weapon_tecrose`] = {
    name = 'weapon_tecrose',
    label = 'Tecrose',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_tg_glock`] = {
    name = 'weapon_tg_glock',
    label = 'Tg Glock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_thebbqap`] = {
    name = 'weapon_thebbqap',
    label = 'Thebbqap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_thermalkatana`] = {
    name = 'weapon_thermalkatana',
    label = 'Thermalkatana',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_tiffanyvalentineakv1bydaie`] = {
    name = 'weapon_tiffanyvalentineakv1bydaie',
    label = 'Tiffany Valentine AK v1',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_titan22`] = {
    name = 'weapon_titan22',
    label = 'Titan22',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_tmk47`] = {
    name = 'weapon_tmk47',
    label = 'Tmk47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_toxiccamodagger`] = {
    name = 'weapon_toxiccamodagger',
    label = 'Toxiccamodagger',
    weapontype = 'Melee',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_ttig34`] = {
    name = 'weapon_ttig34',
    label = 'Ttig34',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_unicorn`] = {
    name = 'weapon_unicorn',
    label = 'Unicorn',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_usp50t`] = {
    name = 'weapon_usp50t',
    label = 'Usp50t',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_valap`] = {
    name = 'weapon_valap',
    label = 'Valap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_valar`] = {
    name = 'weapon_valar',
    label = 'Valar',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_valleysbr`] = {
    name = 'weapon_valleysbr',
    label = 'SBR',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

if QBShared.Weapons[`weapon_vintagepistol`] == nil then
    QBShared.Weapons[`weapon_vintagepistol`] = {
        name = 'weapon_vintagepistol',
        label = 'Vintage Pistol',
        weapontype = 'Pistol',
        ammotype = 'AMMO_PISTOL',
        damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
    }
end

QBShared.Weapons[`weapon_vipar15`] = {
    name = 'weapon_vipar15',
    label = 'Vipar15',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_vipbat`] = {
    name = 'weapon_vipbat',
    label = 'Vipbat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_viphockey`] = {
    name = 'weapon_viphockey',
    label = 'Viphockey',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_vipkeltec`] = {
    name = 'weapon_vipkeltec',
    label = 'Vipkeltec',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_vipmp40`] = {
    name = 'weapon_vipmp40',
    label = 'Vipmp40',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_vipsr47`] = {
    name = 'weapon_vipsr47',
    label = 'Vipsr47',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_vipswitch`] = {
    name = 'weapon_vipswitch',
    label = 'Vipswitch',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_vipvector`] = {
    name = 'weapon_vipvector',
    label = 'Vipvector',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_w88`] = {
    name = 'weapon_w88',
    label = 'W88',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_watergunap`] = {
    name = 'weapon_watergunap',
    label = 'Watergunap',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_watergunsmg`] = {
    name = 'weapon_watergunsmg',
    label = 'Watergunsmg',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_wattastick`] = {
    name = 'weapon_wattastick',
    label = 'Wattastick',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_wcamohellcat`] = {
    name = 'weapon_wcamohellcat',
    label = 'Wcamohellcat',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_whitekatana`] = {
    name = 'weapon_whitekatana',
    label = 'Whitekatana',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_whitelightsaber`] = {
    name = 'weapon_whitelightsaber',
    label = 'Whitelightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_whitereflectivevector`] = {
    name = 'weapon_whitereflectivevector',
    label = 'Whitereflectivevector',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_wirebat`] = {
    name = 'weapon_wirebat',
    label = 'Wirebat',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_wireframe_1911`] = {
    name = 'weapon_wireframe_1911',
    label = 'Wireframe 1911',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_wireframe_9arp`] = {
    name = 'weapon_wireframe_9arp',
    label = 'Wireframe 9Arp',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_wireframe_ar15`] = {
    name = 'weapon_wireframe_ar15',
    label = 'Wireframe Ar15',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_wireframe_deagle`] = {
    name = 'weapon_wireframe_deagle',
    label = 'Wireframe Deagle',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_wireframe_hs`] = {
    name = 'weapon_wireframe_hs',
    label = 'Wireframe Hs',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_wireframe_mac10`] = {
    name = 'weapon_wireframe_mac10',
    label = 'Wireframe Mac10',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_wireframe_ppsh`] = {
    name = 'weapon_wireframe_ppsh',
    label = 'Wireframe Ppsh',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_wireframe_tommy`] = {
    name = 'weapon_wireframe_tommy',
    label = 'Wireframe Tommy',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_wireframe_ump45`] = {
    name = 'weapon_wireframe_ump45',
    label = 'Wireframe Ump45',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_SMG',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

QBShared.Weapons[`weapon_wireframe_vector`] = {
    name = 'weapon_wireframe_vector',
    label = 'Wireframe Vector',
    weapontype = 'Submachine Gun',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Riddled / Drilled / Finished / Submachine Gunned',
}

if QBShared.Weapons[`weapon_wrench`] == nil then
    QBShared.Weapons[`weapon_wrench`] = {
        name = 'weapon_wrench',
        label = 'Wrench',
        weapontype = 'Melee',
        ammotype = nil,
        damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
    }
end

QBShared.Weapons[`weapon_yellowarpwstrap`] = {
    name = 'weapon_yellowarpwstrap',
    label = 'Yellowarpwstrap',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

QBShared.Weapons[`weapon_yellowkatana`] = {
    name = 'weapon_yellowkatana',
    label = 'Yellowkatana',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_yellowlightsaber`] = {
    name = 'weapon_yellowlightsaber',
    label = 'Yellowlightsaber',
    weapontype = 'Melee',
    ammotype = nil,
    damagereason = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered',
}

QBShared.Weapons[`weapon_yellowone`] = {
    name = 'weapon_yellowone',
    label = 'Yellowone',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_yellowreaper`] = {
    name = 'weapon_yellowreaper',
    label = 'Yellowreaper',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_yellowtwo`] = {
    name = 'weapon_yellowtwo',
    label = 'Yellowtwo',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_ylseasterclock`] = {
    name = 'weapon_ylseasterclock',
    label = 'Ylseasterclock',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_ytaser`] = {
    name = 'weapon_ytaser',
    label = 'Ytaser',
    weapontype = 'Pistol',
    ammotype = 'AMMO_PISTOL',
    damagereason = 'Pistoled / Blasted / Plugged / Bust a cap in',
}

QBShared.Weapons[`weapon_zw_amandarifle`] = {
    name = 'weapon_zw_amandarifle',
    label = 'Zw Amandarifle',
    weapontype = 'Assault Rifle',
    ammotype = 'AMMO_RIFLE',
    damagereason = 'Ended / Rifled / Shot down / Floored',
}

-- 730 weapons
