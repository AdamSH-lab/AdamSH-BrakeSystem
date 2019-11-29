--[Do Now Touch!]
local logs = "https://discordapp.com/api/webhooks/650010615544414229/dfgZkSsLs4gpWLKucvEg4iJafwe6MV7eg-ATWuwshW_R-MrXUlAQjKY6dPLxQQU9hGp1"
local connect = "@everyone Brake in use"
AddEventHandler("onServerResourceStart", function(resource)
    if GetCurrentResourceName() == resource then
        PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Adam System", content = connect}), { ['Content-Type'] = 'application/json' })
    end
end)
