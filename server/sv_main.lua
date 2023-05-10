-- 15 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 900 then
        TriggerClientEvent('RRRP-Storm:client:15MinWarning', -1)
    end
end)
-- 10 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 600 then
        TriggerClientEvent('RRRP-Storm:client:5MinWarning', -1)
    end
end)
-- 5 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 300 then
        TriggerClientEvent('RRRP-Storm:client:5MinWarning', -1)
    end
end)
-- 1 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 60 then
        TriggerClientEvent('RRRP-Storm:client:1MinWarning', -1)
    end
end)