# No Vacancy Roleplay — Role Armory

Discord-gated weapon menu for No Vacancy Roleplay. Players with a configured Discord role open a top-left armory, pick a category, and take a weapon. The catalog is the DJ Weapon Store list. The server checks the role again before every grant.

The panel uses the same dark industrial layout as the weapon store: red kicker, category rail, compact rows, and a close control. It sits in the top-left corner and closes with Esc.

## Install

1. Put this folder in your server `resources` directory. The folder name must stay `dj_vipweaponmenu`.
2. Import nothing. The armory does not use a database.
3. Start it after your framework and inventory.

```cfg
ensure qb-core
ensure ox_inventory

# Bot token stays on the server. Do not use setr.
set nvwm_discord_token "YOUR_BOT_TOKEN"
set nvwm_discord_guild "YOUR_GUILD_ID"

add_ace group.admin nvwm.armory allow

ensure dj_vipweaponmenu
```

Open it with `/nvarmory` or `F7`. Players can rebind the key in the GTA settings.

## Discord

The armory accepts whichever role source is already running.

| Provider | When it is used |
| --- | --- |
| `Badger_Discord_API` | Resource is started. Also checks `badger_discord_api`. |
| `zdiscord` | `exports.zdiscord:isRolePresent` |
| `discord_perms` | `exports.discord_perms:IsRolePresent` |
| Built-in bot | `nvwm_discord_token` and `nvwm_discord_guild` |
| Ace | `nvwm.armory` opens the full catalog |

`Config.Discord.Provider` defaults to `auto`, which tries Badger, then zdiscord, then discord_perms, then the built-in bot.

Built-in lookup:

1. Create a Discord application and bot.
2. Turn on the **Server Members Intent**.
3. Invite the bot to the No Vacancy guild.
4. Set the two convars above. Never paste the token into `config.lua`. That file is sent to players.
5. Players must have Discord open when they launch FiveM so the server receives a `discord:` identifier.

Copy a role id with Discord Developer Mode on: Server Settings → Roles → right click the role → Copy Role ID.

```lua
Config.Roles = {
    ['123456789012345678'] = {
        label = 'No Vacancy VIP',
        categories = '*',
    },
    ['223456789012345678'] = {
        label = 'Pistol Access',
        categories = { 'pistols', 'heavy_pistols' },
        weapons = { 'WEAPON_VIPVECTOR' },
    },
}
```

`categories = '*'` unlocks every weapon. A category also unlocks weapons in that family, so `pistols` includes variant pistols. Category ids:

`pistols`, `heavy_pistols`, `smgs`, `shotguns`, `rifles`, `assault_rifles`, `snipers`, `melee`, `custom`, `variants`

`Config.WeaponRoles` is a tighter lock. Those weapons ignore category access and require one of the listed role ids.

Placeholder ids that ship in `config.lua` never unlock weapons. `/nvwm_refresh` (ace `nvwm.armory`) clears the role cache, which otherwise lasts `Config.Discord.CacheSeconds`.

## Frameworks and inventories

Both are `auto` unless you set them.

Frameworks: `qbox`, `qbcore`, `esx` (legacy and export), `standalone`.

Inventories: `ox_inventory`, `qb-inventory`, `ps-inventory`, `lj-inventory`, `qs-inventory`, `codem-inventory`, `core_inventory`, `tgiann-inventory`, `origen_inventory`. If none of those are running, ESX uses `addWeapon`, QB and Qbox use `Player.Functions.AddItem`, and standalone equips the weapon on the ped.

For an inventory that is not in that list, set `Config.Inventory = 'custom'` and fill in `Config.CustomInventory.Add`.

Item names are the ox_inventory names from the weapon store. If another inventory uses a different name, map it:

```lua
Config.ItemOverrides = {
    ['qb-inventory'] = { WEAPON_GLOCK21 = 'weapon_glock21' },
}
```

Ammo items are mapped in `Config.Ammo`. Ox names stay as they are (`ammo-44`, `ammo-rifle`, and the rest). QB-style inventories use `pistol_ammo`, `rifle_ammo`, `shotgun_ammo`, and `snp_ammo`. Change those keys if your items differ.

## Catalog

`shared/catalog_data.lua` is the DJ Weapon Store weapon list with duplicate item names removed. Do not edit it. Add a weapon with `Config.ExtraWeapons` and hide one with `Config.DisabledWeapons`.

```lua
Config.ExtraWeapons = {
    { item = 'WEAPON_EXAMPLE', label = 'Example', category = 'pistols', ammo = 'ammo-9' },
}
Config.DisabledWeapons = { WEAPON_YELLOWREAPER = true }
```

## Rules

- `Config.GiveCooldown` seconds between grants.
- `Config.AllowDuplicates = false` blocks a weapon the player already has.
- `Config.MaxGrants` caps grants per session. `0` is unlimited.
- `Config.ReplacePrevious` removes the last armory weapon before the next grant.
- `Config.GiveAmmo` adds the matching ammo item. Standalone and default ESX load rounds into the weapon instead.
- Weapon rows try `nui://ox_inventory/web/images/%s.png`. A missing image shows a letter.

## Commands

| Command | Who | What |
| --- | --- | --- |
| `/nvarmory` | Players with a role or ace | Open the armory |
| `F7` | Same | Default keybind |
| `/nvwm_refresh` | `nvwm.armory` or the server console | Clear the Discord role cache |

Esc and the Close button both dismiss the panel. The pause menu is suppressed while it is open.

Set `Config.Debug = true` while wiring roles. The server console prints the provider it used. It never prints the bot token.
