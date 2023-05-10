function TsunamiEffect()
    local startStamina = 30
    while startStamina > 0 do 
        Citizen.Wait(1000)
        startStamina = startStamina - 1
        RestorePlayerStamina(PlayerId(), 1.0)
        if math.random(1, 100) < 9 then
            if not IsPedRagdoll(PlayerPedId()) and IsPedOnFoot(PlayerPedId()) and not IsPedSwimming(PlayerPedId()) then
                ShakeGameplayCam(0.06)
                SetPedToRagdollWithFall(PlayerPedId(), 0, 0, 1, GetEntityForwardVector(PlayerPedId()), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
            end
        end
    end
    startStamina = 0
end

-------------------- Auto Restart Tsunami Email --------------------

-- 15 Minutes Reminder
RegisterNetEvent('RRRP-Storm:client:15MinWarning', function(text)
    TriggerEvent('redem_roleplay:NotifyLeft', "STORM WARNING", "A storm is coming in 15 minutes! Please start heading home or somewhere local for SAFETY!", "menu_textures", "menu_icon_alert", 5000)
    Citizen.Wait(math.random(15000, 25000))
    TriggerServerEvent("weathersync:setWeather", Config.FirstWeather, 1000 * 1.0, true, Config.Winter)
    TriggerServerEvent("weathersync:setWind", Config.WindDirection * 1.0, Config.WindSpeed * 1.0, true)
    Citizen.Wait(math.random(13000, 23000))
    TsunamiEffect()
end)
-- 10 Minutes Reminder
RegisterNetEvent('RRRP-Storm:client:10MinWarning', function(text)
    TriggerEvent('redem_roleplay:NotifyLeft', "STORM WARNING", "A storm is coming in 10 minutes! Please start heading home or somewhere local for SAFETY!", "menu_textures", "menu_icon_alert", 5000)
    Citizen.Wait(math.random(15000, 25000))
    TriggerServerEvent("weathersync:setWeather", Config.SecondWeather, 1000 * 1.0, true, Config.Winter)
    Citizen.Wait(math.random(10000, 20000))
    TsunamiEffect()
end)
-- 5 Minutes Reminder
RegisterNetEvent('RRRP-Storm:client:5MinWarning', function(text)
    TriggerEvent('redem_roleplay:NotifyLeft', "STORM WARNING", "A storm is coming in 5 minutes! Please start heading home or somewhere local for SAFETY!", "menu_textures", "menu_icon_alert", 5000)
    Citizen.Wait(math.random(10000, 20000))
    TsunamiEffect()
end)
-- 1 Minutes Reminder
RegisterNetEvent('RRRP-Storm:client:1MinWarning', function(text)
    TriggerEvent('redem_roleplay:NotifyLeft', "STORM WARNING", "A storm is coming in 1 minute! Please start heading home or somewhere local for SAFETY!", "menu_textures", "menu_icon_alert", 5000)
    Citizen.Wait(math.random(13000, 23000))
    TsunamiEffect()
end)