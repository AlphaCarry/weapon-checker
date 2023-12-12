local QBCore = exports['qb-core']:GetCoreObject()


CreateThread(function()	-- Check if ped has weapon in inventory --
    while true do
        Wait(5000)

        if LocalPlayer.state.isLoggedIn then

            local PlayerPed = PlayerPedId()
            local player = PlayerId()
            local CurrentWeapon = GetSelectedPedWeapon(PlayerPed)
            local WeaponInformation = QBCore.Shared.Weapons[CurrentWeapon]
 
            if WeaponInformation["name"] == "weapon_glock19" or WeaponInformation["name"] == "weapon_stungun" or WeaponInformation["name"] == "weapon_hkump" or WeaponInformation["name"] == "weapon_m4a1block2" or WeaponInformation["name"] == "weapon_fm1_hk416" or WeaponInformation["name"] == "weapon_nightstick" then
				if QBCore.Functions.GetPlayerData().job.name == "police" or QBCore.Functions.GetPlayerData().job.name == "lawyer" then
				else
				TriggerServerEvent('KickForWeapon')
				end
            end
        end
    end
end)
