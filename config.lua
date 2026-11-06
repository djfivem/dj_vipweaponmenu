Config = {}

-- Command and default key. Players can rebind the key in the FiveM settings.
Config.Command = 'nvarmory'
Config.DefaultKey = 'F7'

-- auto | qbox | qbcore | esx | standalone
Config.Framework = 'auto'

-- auto | ox_inventory | qb-inventory | ps-inventory | lj-inventory | qs-inventory
-- codem-inventory | core_inventory | tgiann-inventory | origen_inventory
-- esx | qb-player | standalone | custom
Config.Inventory = 'auto'

-- auto | ox_lib | qb | esx | native
Config.Notify = 'auto'

-- ACE that opens the full armory even when Discord roles do not match.
-- server.cfg: add_ace group.admin nvwm.armory allow
Config.AcePermission = 'nvwm.armory'
Config.AceUnlocksAll = true

-- Seconds between weapon grants. 0 disables the cooldown.
Config.GiveCooldown = 3

-- How many weapons one player can take before a restart. 0 is unlimited.
Config.MaxGrants = 0

-- Refuse a weapon the player already carries.
Config.AllowDuplicates = false

-- Remove the previous armory weapon before giving the next one.
Config.ReplacePrevious = false

-- Ammo item granted with guns. Melee never gets ammo.
-- Standalone mode loads NativeAmmo straight into the weapon instead.
Config.GiveAmmo = true
Config.AmmoCount = 150
Config.NativeAmmo = 120

-- ox_inventory creates its own weapon metadata. Leave this off unless a pack requires it.
Config.OxMetadataAmmo = false

-- qb / qs / ps / lj / codem / tgiann / origen receive { ammo = AmmoCount } on the weapon item.
Config.PassAmmoMetadata = true

Config.BlockWhenDead = true
Config.LogGrants = true
Config.Debug = false

-- Weapon images. %s is the item name from the catalog.
-- Failed images fall back to a letter mark, so a missing file never breaks the row.
Config.Images = {
    enabled = true,
    template = 'nui://ox_inventory/web/images/%s.png',
}

--[[
    Discord roles
    -------------
    Provider:
      auto           Badger_Discord_API, then zdiscord, then discord_perms, then the built-in bot lookup
      badger         Badger_Discord_API only
      zdiscord       zdiscord only
      discord_perms  discord_perms only
      native         built-in Discord API lookup only
      ace            skip Discord and use the ace permission only

    Built-in lookup needs a bot in your guild with the Server Members Intent enabled.
    Put the token in server.cfg. Do not put it in this file. This file is sent to players.

      set nvwm_discord_token "YOUR_BOT_TOKEN"
      set nvwm_discord_guild "YOUR_GUILD_ID"

    Do not use setr. That would copy the token to every player.

    Role ids: Discord → User Settings → Advanced → Developer Mode.
    Then Server Settings → Roles → right click the role → Copy Role ID.
    Players also need Discord running when they open FiveM so the server can see discord:theirId.
]]
Config.Discord = {
    Provider = 'auto',
    GuildId = '',
    CacheSeconds = 120,
    ErrorCacheSeconds = 20,
    TokenConvar = 'nvwm_discord_token',
    GuildConvar = 'nvwm_discord_guild',
}

--[[
    Replace the placeholder ids. A placeholder never unlocks weapons.

    categories = '*' unlocks every weapon in the catalog.
    A category also unlocks weapons whose family matches, so "pistols" includes
    variant pistols. Category ids:

      pistols, heavy_pistols, smgs, shotguns, rifles, assault_rifles,
      snipers, melee, custom, variants

    weapons = { 'WEAPON_NAME' } grants those items even when the category is not included.
]]
Config.Roles = {
    ['000000000000000001'] = {
        label = 'No Vacancy VIP',
        categories = '*',
    },
    -- ['000000000000000002'] = {
    --     label = 'Pistol Access',
    --     categories = { 'pistols', 'heavy_pistols' },
    -- },
}

-- Extra lock. Listed weapons ignore category grants and require one of these role ids.
Config.WeaponRoles = {
    -- ['WEAPON_LSGOLDAK'] = { '000000000000000003' },
}

-- Hide a catalog weapon. Key is the item name.
Config.DisabledWeapons = {}

-- Weapons that are not in the DJ Weapon Store catalog.
Config.ExtraWeapons = {
    -- { item = 'WEAPON_EXAMPLE', label = 'Example', category = 'pistols', ammo = 'ammo-9' },
}

-- Per-inventory item names, when a framework does not use the ox item name.
-- Keyed by catalog id or by the ox item name.
Config.ItemOverrides = {
    -- ['qb-inventory'] = { WEAPON_GLOCK21 = 'weapon_glock21' },
}

-- ox ammo names from the catalog, and the item each inventory expects.
Config.Ammo = {
    ['ammo-9'] = { ox = 'ammo-9', qb = 'pistol_ammo', esx = 'ammo-9' },
    ['ammo-44'] = { ox = 'ammo-44', qb = 'pistol_ammo', esx = 'ammo-44' },
    ['ammo-rifle'] = { ox = 'ammo-rifle', qb = 'rifle_ammo', esx = 'ammo-rifle' },
    ['ammo-shotgun'] = { ox = 'ammo-shotgun', qb = 'shotgun_ammo', esx = 'ammo-shotgun' },
    ['ammo-sniper'] = { ox = 'ammo-sniper', qb = 'snp_ammo', esx = 'ammo-sniper' },
}

-- Used only when Config.Inventory = 'custom'.
-- Add(src, item, count, metadata) must return true on success.
-- Remove(src, item, count) and Count(src, item) are optional.
Config.CustomInventory = {
    -- Add = function(src, item, count, metadata) return false end,
    -- Remove = function(src, item, count) return false end,
    -- Count = function(src, item) return 0 end,
}

Config.Text = {
    noDiscord = 'Link Discord in FiveM to open the No Vacancy armory.',
    notInGuild = 'Join the No Vacancy Discord to use this armory.',
    noRole = 'Your Discord role does not unlock this armory.',
    unconfigured = 'The armory has no Discord roles set yet.',
    discordDown = 'Discord role check failed. Try again in a moment.',
    notReady = 'Discord roles are still loading. Try again in a moment.',
    cooldown = 'Wait a moment before taking another weapon.',
    alreadyHave = 'You already have that weapon.',
    inventoryFull = 'You do not have room for that weapon.',
    notAllowed = 'Your role does not include that weapon.',
    granted = 'Weapon added to your inventory.',
    grantedNoAmmo = 'Weapon added. Ammo did not fit.',
    equipped = 'Weapon equipped.',
    failed = 'Could not give that weapon.',
    dead = 'You cannot open the armory right now.',
    timeout = 'The armory did not respond.',
    refreshed = 'Role cache refreshed.',
    noPermission = 'You cannot refresh the armory cache.',
    limit = 'You have reached the armory limit.',
}
