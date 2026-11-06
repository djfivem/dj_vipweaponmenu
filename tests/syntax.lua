local files = {
    'fxmanifest.lua',
    'config.lua',
    'shared/catalog_data.lua',
    'shared/catalog.lua',
    'shared/access.lua',
    'server/discord.lua',
    'server/inventory.lua',
    'server/main.lua',
    'client/main.lua',
    'tests/run.lua',
}

local failed = false
for i = 1, #files do
    local chunk, err = loadfile(files[i])
    if not chunk then
        failed = true
        io.stderr:write(files[i] .. ': ' .. tostring(err) .. '\n')
    end
end

if failed then os.exit(1) end
print('syntax ok')
