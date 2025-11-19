
local Webhooks = {}


Webhooks.buy = ""



function Webhooks:SendEmbed(webhook, title, description, color, fields)
    if not webhook or webhook == "" then
        print("^1[WEBHOOK ERROR] Missing webhook URL!^0")
        return
    end

    local data = {
        username = "Ranch Logs",
        embeds = {{
            title = title,
            description = description,
            color = color,
            fields = fields or {},
            footer = {
                text = "Ranch System Logs • " .. os.date("%Y-%m-%d %H:%M:%S")
            }
        }}
    }

    PerformHttpRequest(
        webhook,
        function(err, text, headers) end,
        "POST",
        json.encode(data),
        { ["Content-Type"] = "application/json" }
    )
end

return Webhooks
