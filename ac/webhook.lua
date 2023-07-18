-------------------------------------------------------------------------------
-- ANTICHEAT - M1
-------------------------------------------------------------------------------

local DISCORD_NAME = ""
local DISCORD_IMAGE = ""
local logs = ""
local communtiylogo = ""

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, content = "**M1** ```ini\n[Started - M1]```", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })

AddEventHandler('playerConnecting', function()
local name = GetPlayerName(source)
local steamhex = GetPlayerIdentifier(source)
local licenses = GetPlayerIdentifiers(source)
local ip = GetPlayerEndpoint(source)
local connect = {
            {
                ["color"] = "994705",
                ["title"] = "Player joining | M1 - AC",
                ["description"] = "Steam: **"..name.."**\n Hex: **"..steamhex.."**\n Lisence: **"..licenses[2].."**\nIP: **"..ip.."**",
	            ["footer"] = {
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "M1 ANTICHEAT", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
local name = GetPlayerName(source)
local steamhex = GetPlayerIdentifier(source)
local licenses = GetPlayerIdentifiers(source)
local ip = GetPlayerEndpoint(source)
local disconnect = {
            {
                ["color"] = "0",
                ["title"] = "Player has left | M1 - AC",
                ["description"] = "Steam: **"..name.."**\nID: **"..source.."**\n Hex: **"..steamhex.."**\n Lisence: **"..licenses[2].."**\nIP: **"..ip.."**",
	            ["footer"] = {
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "M1 ANTICHEAT", embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)