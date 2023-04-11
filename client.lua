
local createdBlips = {}

-- Loop through each blip in the configuration and create it
for i, blipData in ipairs(Config.Blips) do
    -- Check if the blip has already been created
    if not createdBlips[blipData.id] then
        local blip = AddBlipForCoord(blipData.coords.x, blipData.coords.y, blipData.coords.z)
        SetBlipSprite(blip, blipData.sprite)
        SetBlipDisplay(blip, blipData.display)
        SetBlipScale(blip, blipData.scale)
        SetBlipColour(blip, blipData.color)
        SetBlipAsShortRange(blip, blipData.shortRange)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipData.name)
        EndTextCommandSetBlipName(blip)

        -- Mark the blip as created
        createdBlips[blipData.id] = true
    end
end