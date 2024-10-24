Citizen.CreateThread(function()
    for ctb, locationpvp in pairs(CTB_AFK.ctb_pvp) do
        local modelName = 'ctb_pvp' 

        RequestModel(modelName)

        while not HasModelLoaded(modelName) do
            Wait(0)
        end

        local model = CreateObject(GetHashKey(modelName), locationpvp.location.x, locationpvp.location.y, locationpvp.location.z,false, false, false)
        
        if locationpvp.heading then
            SetEntityHeading(model, locationpvp.heading)
        end

        PlaceObjectOnGroundProperly(model)

        SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(model), false)
    end
end)
