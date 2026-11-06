fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'dj_vipweaponmenu'
author 'Diesel Dev Shack'
description 'No Vacancy Roleplay armory. Discord-role weapons for every framework and inventory.'
version '1.0.0'

ui_page 'web/index.html'

files {
    'web/index.html',
    'web/css/style.css',
    'web/js/app.js',
    'web/brand/logo.png',
}

shared_scripts {
    'config.lua',
}

server_scripts {
    'shared/catalog_data.lua',
    'shared/catalog.lua',
    'shared/access.lua',
    'server/discord.lua',
    'server/inventory.lua',
    'server/main.lua',
}

client_scripts {
    'client/main.lua',
}
