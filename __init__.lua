require("hud")
require("mapvote")

players = {}

function player_connected(player)
    table.insert(players, player) 
end

level:onnotify("connected", player_connected)

level:onnotify("connected", mapvoteconnected)

-- [[ Utilities ]] --

local function starts_with(str, start)
    return str:sub(1, #start) == start
end
