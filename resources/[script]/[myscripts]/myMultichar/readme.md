Thanks for downloading the script!
For support and further updates you can join my Discord: https://discord.gg/UyAu2jABzE

Advanced installation instructions: https://github.com/Luis-spec/faq/blob/main/myMulticharNewESXInstructions.md
Installation:
1.) Put the script in your ressources folder
2.) Import the multichar.sql to your database
3.) Do the steps described below
4.) Set up the Config.lua
5.) Add 'start myMultichar' to your server.cfg

Required changes in es_extended/client/main.lua
1.) Replace:
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if NetworkIsPlayerActive(PlayerId()) then
            TriggerServerEvent('esx:onPlayerJoined')
            break
        end
    end
end)

with

RegisterNetEvent('myMultichar:loaded')
AddEventHandler('myMultichar:loaded', function()
    TriggerServerEvent('esx:onPlayerJoined')
end)

2.) Comment out the following part
    -- check if player is coming from loading screen
    if GetEntityModel(PlayerPedId()) == GetHashKey('PLAYER_ZERO') then
        local defaultModel = GetHashKey('a_m_y_stbla_02')
        RequestModel(defaultModel)

        while not HasModelLoaded(defaultModel) do
            Citizen.Wait(100)
        end

        SetPlayerModel(PlayerId(), defaultModel)
        local playerPed = PlayerPedId()

        SetPedDefaultComponentVariation(playerPed)
        SetPedRandomComponentVariation(playerPed, true)
        SetModelAsNoLongerNeeded(defaultModel)
        FreezeEntityPosition(playerPed, false)
    end

3.) Replace
    ESX.Game.Teleport(PlayerPedId(), {
        x = playerData.coords.x,
        y = playerData.coords.y,
        z = playerData.coords.z + 0.25,
        heading = playerData.coords.heading
    }, function()
        TriggerServerEvent('esx:onPlayerSpawn')
        TriggerEvent('esx:onPlayerSpawn')
        TriggerEvent('playerSpawned') -- compatibility with old scripts, will be removed soon
        TriggerEvent('esx:restoreLoadout')

        Citizen.Wait(3000)
        ShutdownLoadingScreen()
        FreezeEntityPosition(PlayerPedId(), false)
        DoScreenFadeIn(10000)
        StartServerSyncLoops()
    end)

with 

--[[
    ESX.Game.Teleport(PlayerPedId(), {
        x = playerData.coords.x,
        y = playerData.coords.y,
        z = playerData.coords.z + 0.25,
        heading = playerData.coords.heading
    }, function()
    end)
]]--
    TriggerServerEvent('esx:onPlayerSpawn')
    TriggerEvent('esx:onPlayerSpawn')
    TriggerEvent('playerSpawned') -- compatibility with old scripts, will be removed soon
    TriggerEvent('esx:restoreLoadout')

    Citizen.Wait(0)
    ShutdownLoadingScreen()
    FreezeEntityPosition(PlayerPedId(), false)
    DoScreenFadeIn(0)
    StartServerSyncLoops()

4.) Moreover you have to remove a small part from esx_skin. esx_skin/client/main.lua line 268. Should look like this:

	TriggerEvent('skinchanger:loadSkin', {sex = 0}, OpenSaveableMenu)

This could be removed. The script will automatically open the menu, when required.

5.) Finally be sure your identifier/owner columns in your database are at least a varchar(60).
Tutorial: https://youtu.be/USbWHihndg0

Pay attention that ESX and NativeUI are running.
Right NativeUI version: https://github.com/FrazzIe/NativeUILua

