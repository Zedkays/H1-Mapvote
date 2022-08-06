players = {}

function player_connected(player)
    table.insert(players, player) 
end

level:onnotify("connected", player_connected)

level:onnotify("connected", mapvoteconnected)
