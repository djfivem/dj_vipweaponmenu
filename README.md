# VIP weapon pack for QB inventory

Transparent inventory icons and QBCore item definitions for the weapons in `source/ox-weapons.lua`.

730 equippable weapons are included. 39 entries in that file are world damage types (animals, drowning, vehicle impacts, and similar) and are not inventory items.

## Icons

Files live in `qb-inventory/html/images/`. Each one is a **100×100 PNG** with a transparent background, which is the size qb-inventory slots use. The gun is inset so it does not touch the slot edge.

The filename matches the item image field: `weapon_glock21.png`.

These are flat inventory silhouettes. The shape follows the weapon (pistol, AK, AR, SMG, shotgun, melee, throwable) and the colors follow the name (gold, chrome, pink, camo, ice, galaxy, and so on). Two pistols with the same colors still differ by stripe, grip, muzzle, and accent so they are not copies of each other.

Copy the pngs into the server resource:

```
qb-inventory/html/images/
```

Filenames for stock GTA weapons (`weapon_pistol.png`, `weapon_carbinerifle.png`, and the rest) match the icons qb-inventory already ships. Skip those files if you want to keep the original photos.

## QBCore items and weapon info

`qb/vip_weapons.lua` registers every weapon on `QBShared.Items` and `QBShared.Weapons`.

1. Copy it to `qb-core/shared/vip_weapons.lua`.
2. In `qb-core/fxmanifest.lua`, add it to `shared_scripts` after `shared/items.lua` and `shared/weapons.lua`:

```lua
shared_scripts {
    'shared/locale.lua',
    'locale/en.lua',
    'shared/main.lua',
    'shared/items.lua',
    'shared/jobs.lua',
    'shared/vehicles.lua',
    'shared/gangs.lua',
    'shared/weapons.lua',
    'shared/locations.lua',
    'shared/vip_weapons.lua',
}
```

Custom weapons are always written in. Stock GTA weapons are added only when that name is not already defined, so a normal qb-core pistol, rifle, and ammo setup is left alone.

Ammo types are the QBCore ones (`AMMO_PISTOL`, `AMMO_SMG`, `AMMO_RIFLE`, `AMMO_SHOTGUN`, `AMMO_SNIPER`, and the heavy types). They line up with the ox ammo on the source weapon:

| ox ammo | QB ammo |
| --- | --- |
| ammo-44, pd-pistol | AMMO_PISTOL |
| ammo-9 on a pistol | AMMO_PISTOL |
| ammo-9 on an SMG or rifle | AMMO_SMG |
| ammo-rifle, ammo-rifle2, pd-rifle | AMMO_RIFLE |
| ammo-shotgun, pd-shotgun, pd-beanbag | AMMO_SHOTGUN |
| ammo-sniper, pd-sniper | AMMO_SNIPER |

Item names are lowercase (`weapon_glock21`). That is the same joaat hash as `WEAPON_GLOCK21`.

## Durability

`qb/vip_durability.lua` copies the ox durability value into `qb-weapons` `Config.DurabilityMultiplier`. Copy it into `qb-weapons` and load it after `config.lua`:

```lua
shared_scripts {
    'config.lua',
    'vip_durability.lua',
}
```

## Regenerating

```
pip install pillow numpy
python3 tools/generate_weapon_assets.py
```
