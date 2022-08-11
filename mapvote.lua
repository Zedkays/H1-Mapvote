-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
-----------------------------------------  Z e d k a y s   M a p v o t e  -----------------------------------------
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

-- You should only have to edit the config below --

local config = {}
config.time = 10
config.socials1 = "^7Discord: dsc.gg/^6ZedkaysServers"
config.socials2 = "^7Twitter: twitter.com/^6ZedkaysServer"
config.gametypes = "war dom hp"
config.maps = "mp_convoy mp_showdown mp_bog mp_crash mp_crossfire mp_citystreets mp_shipment mp_vacant mp_broadcast mp_bloc mp_killhouse mp_strike mp_crash_snow mp_backlot mp_farm mp_overgrown mp_carentan mp_creek mp_pipeline mp_cargoship mp_bog_summer"

-- You should only have to edit the config above --

local map1count = 0
local map2count = 0
local map3count = 0

local zed = {}

game:precachesound("mp_challenge_complete")

-- [[ Utilities ]] --
function split(pString, pPattern)
    local Table = {}  -- NOTE: use {n = 0} in Lua-5.0
    local fpat = "(.-)" .. pPattern
    local last_end = 1
    local s, e, cap = pString:find(fpat, 1)
    while s do
       if s ~= 1 or cap ~= "" then
      table.insert(Table,cap)
       end
       last_end = e+1
       s, e, cap = pString:find(fpat, last_end)
    end
    if last_end <= #pString then
       cap = pString:sub(last_end)
       table.insert(Table, cap)
    end
    return Table
end

function maptoname( mapid )
    mapid = mapid:lower()
    if     mapid == "mp_convoy" then return "Ambush"
    elseif mapid == "mp_backlot" then return "Backlot"
    elseif mapid == "mp_bog" then return "Bog"
    elseif mapid == "mp_crash" then return "Crash"
    elseif mapid == "mp_crossfire" then return "Crossfire"
    elseif mapid == "mp_citystreets" then return "District"
    elseif mapid == "mp_farm" then return "Downpour"
    elseif mapid == "mp_overgrown" then return "Overgrown"
    elseif mapid == "mp_shipment" then return "Shipment"
    elseif mapid == "mp_vacant" then return "Vacant"
    elseif mapid == "mp_vlobby_room" then return "Lobby Map"
    elseif mapid == "mp_broadcast" then return "Broadcast"
    elseif mapid == "mp_carentan" then return "Chinatown"
    elseif mapid == "mp_countdown" then return "Countdown"
    elseif mapid == "mp_bloc" then return "Bloc"
    elseif mapid == "mp_creek" then return "Creek"
    elseif mapid == "mp_killhouse" then return "Killhouse"
    elseif mapid == "mp_pipeline" then return "Pipeline"
    elseif mapid == "mp_strike" then return "Strike"
    elseif mapid == "mp_showdown" then return "Showdown"
    elseif mapid == "mp_cargoship" then return "Wet Work"
    elseif mapid == "mp_crash_snow" then return "Winter Crash"
    elseif mapid == "mp_farm_spring" then return "Day Break"
    elseif mapid == "mp_bog_summer" then return "Beach Bog"
    end
    return mapid
end

function gametypetostring( gametype )
    gametype = gametype:lower()
    if     gametype == "war" then return "Team Deathmatch"
    elseif gametype == "dom" then return "Domination"
    elseif gametype == "hp" then return "Hardpoint"
    elseif gametype == "sd" then return "Search & Destroy"
    elseif gametype == "dm" then return "Free for all"
    elseif gametype == "conf" then return "Kill Confirmed"
    elseif gametype == "sab" then return "Sabotage"
    elseif gametype == "koth" then return "Headquarters"
    elseif gametype == "gun" then return "Gun Game"
    elseif gametype == "ctf" then return "Capture The Flag"
    elseif gametype == "dd" then return "Demolition"
    end
    return gametype
end

function choosefromatable(list)
    random = math.random(1, #list )
    return random
end

config.started = false

function mapvote()
    
    config.started = true

    maps = split(config.maps, " ")
    maps_to_choose = split(config.maps, " ")
    maps_to_vote = {}
    maps_to_vote[1] = choosefromatable(maps_to_choose)
    table.remove(maps_to_choose, maps_to_vote[1])

    maps_to_vote[2] = choosefromatable(maps_to_choose)
    table.remove(maps_to_choose, maps_to_vote[2])

    maps_to_vote[3] = choosefromatable(maps_to_choose)
    table.remove(maps_to_choose, maps_to_vote[3])

    gametypes = split(config.gametypes, " ")
    gametypes_to_choose = split(config.gametypes, " ")
    gametypes_to_vote = {}
    gametypes_to_vote[1] = choosefromatable(gametypes_to_choose)
    table.remove(gametypes_to_choose, gametypes_to_vote[1])

    gametypes_to_vote[2] = choosefromatable(gametypes_to_choose)
    table.remove(gametypes_to_choose, gametypes_to_vote[2])

    gametypes_to_vote[3] = choosefromatable(gametypes_to_choose)
    table.remove(gametypes_to_choose, gametypes_to_vote[3])
    
    zed.mapvote1map = drawtext("font", "objective", 1, 0, -36, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "Press [{+actionslot 3}] for " .. maptoname(maps[maps_to_vote[1]]) .. "\n" .. gametypetostring(gametypes[gametypes_to_vote[1]]) .. "\n\n" .. "Press [{+actionslot 4}] for " .. maptoname(maps[maps_to_vote[2]]) .. "\n" .. gametypetostring(gametypes[gametypes_to_vote[2]]) .. "\n\n" .. "Press [{+actionslot 2}] for " .. maptoname(maps[maps_to_vote[3]]) .. "\n" .. gametypetostring(gametypes[gametypes_to_vote[3]]))
    zed.mapvote1background = drawbox("icon", 0, -31, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 1, "white", 200, 30)
    zed.mapvote1votes = drawtext("font", "objective", 1, 90, -31, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "0")
    zed.mapvote2background = drawbox("icon", 0, 5, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 1, "white", 200, 30)
    zed.mapvote2votes = drawtext("font", "objective", 1, 90, 5, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "0")
    zed.mapvote3background = drawbox("icon", 0, 41, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 1, "white", 200, 30)
    zed.mapvote3votes = drawtext("font", "objective", 1, 90, 41, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "0")
    zed.timerbackground = drawbox("icon", 0, 70, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 1, "white", 75, 20)
    zed.timerbar = drawbox("icon", 0, 80, "center", "middle", "center", "middle", vector:new(0.5, 0, 0.5), 1, "white", 75, 3)
    zed.timer = drawtext("font", "objective", 1.7, 0, 69, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "00:00")
    zed.socials1 = drawtext("font", "objective", 1.1, -5, -90, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, config.socials1 .. "\n\n" .. config.socials2)
    zed.globalbackground = drawbox("icon", 0, -7, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 0.5, "white", 270, 200)
    
    zed.timer:settimer(config.time)     
    local loop = game:oninterval(function ()
        config.time = config.time - 1
        print(config.time)
        for index, player in ipairs(players) do
            player:playsound("ui_mp_timer_countdown")
        end

        local botcount = countBots()
        if ((#players - botcount) == (map1count + map2count + map3count)) or config.time == 0 then
            if map1count > map2count and map1count > map3count then 
                game:executecommand("sayraw ^7Changing Map to: ^:" .. maptoname(maps[maps_to_vote[1]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[1]]) .. " ^7with ^:" .. map1count .. " ^7votes!")
                game:executecommand('set sv_maprotationcurrent "gametype ' .. gametypes[gametypes_to_vote[1]] .. ' map ' .. maps[maps_to_vote[1]] .. '"')
            elseif map2count > map1count and map2count > map3count then 
                game:executecommand("sayraw ^7Changing Map to: ^:" .. maptoname(maps[maps_to_vote[2]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[2]]) .. " ^7with ^:" .. map2count .. " ^7votes!")
                game:executecommand('set sv_maprotationcurrent "gametype ' .. gametypes[gametypes_to_vote[2]] .. ' map ' .. maps[maps_to_vote[2]] .. '"')
            elseif map3count > map1count and map3count > map2count then
                game:executecommand("sayraw ^7Changing Map to: ^:" .. maptoname(maps[maps_to_vote[3]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[3]]) .. " ^7with ^:" .. map3count .. " ^7votes!")
                game:executecommand('set sv_maprotationcurrent "gametype ' .. gametypes[gametypes_to_vote[3]] .. ' map ' .. maps[maps_to_vote[3]] .. '"')
            elseif map1count > map2count and map1count == map3count then 
                game:executecommand("sayraw ^7Changing Map to: ^:" .. maptoname(maps[maps_to_vote[1]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[1]]) .. " ^7with ^:" .. map1count .. " ^7votes!")
                game:executecommand('set sv_maprotationcurrent "gametype ' .. gametypes[gametypes_to_vote[1]] .. ' map ' .. maps[maps_to_vote[1]] .. '"')
            elseif map2count > map1count and map2count == map3count then 
                game:executecommand("sayraw ^7Changing Map to: ^:" .. maptoname(maps[maps_to_vote[2]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[2]]) .. " ^7with ^:" .. map2count .. " ^7votes!")
                game:executecommand('set sv_maprotationcurrent "gametype ' .. gametypes[gametypes_to_vote[2]] .. ' map ' .. maps[maps_to_vote[2]] .. '"')
            elseif map3count > map1count and map3count == map2count then
                game:executecommand("sayraw ^7Changing Map to: ^:" .. maptoname(maps[maps_to_vote[3]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[3]]) .. " ^7with ^:" .. map3count .. " ^7votes!")
                game:executecommand('set sv_maprotationcurrent "gametype ' .. gametypes[gametypes_to_vote[3]] .. ' map ' .. maps[maps_to_vote[3]] .. '"')
            else
                game:executecommand("sayraw ^7Changing Map to: ^:" .. maptoname(maps[maps_to_vote[1]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[1]]) .. "^7!")
                game:executecommand('set sv_maprotationcurrent "gametype ' .. gametypes[gametypes_to_vote[1]] .. ' map ' .. maps[maps_to_vote[1]] .. '"')
            end
            
            if ((#players - botcount) == (map1count + map2count + map3count)) then
                game:executecommand("sayraw ^:All Players ^7Voted!")
            end

            level:notify("end_vote")
            
            zed.mapvote1background:destroy()
            zed.mapvote1map:destroy() 
            zed.mapvote1votes:destroy() 
            zed.mapvote2background:destroy()
            zed.mapvote2votes:destroy() 
            zed.mapvote3background:destroy()
            zed.mapvote3votes:destroy() 
            zed.timerbackground:destroy()
            zed.timerbar:destroy()
            zed.timer:destroy() 
            zed.socials1:destroy()
            zed.globalbackground:destroy()
        end
        
    end, 1000)

    loop:endon(level, "end_vote")
    
    for index, player in ipairs(players) do
        player:notify("start_vote")
        player:setclientomnvar("ui_use_mlg_hud", 1)
    end
end

local final_killcam = nil
final_killcam = game:detour("_id_A78D", "endfinalkillcam", function()

    level:onnotifyonce("end_vote", function()
        game:ontimeout(function()
            final_killcam.invoke()
        end, 2000)
    end)
    if game:scriptcall("maps/mp/_utility", "_id_A1CA") == 1 and #players >= 0 then
        mapvote()
    else
        level:notify("end_vote")
    end
end)

function entity:onPlayerDisconnect()
    local index = tablefind(players, self)
	if index ~= nil then
		table.remove(players, index)
	end
end

function mapvoteconnected(player)

    if player:is_bot() == false and not config.started then
        local disconnectListener = player:onnotifyonce("disconnect", function ()  player:onPlayerDisconnect() end)
        
        player:onnotifyonce("start_vote", function ()

            local voted = false

            player:notifyonplayercommand("map1votebind", "+actionslot 3")
            player:onnotifyonce("map1votebind", function() 
                if not voted then
                    voted = true
                    map1count = (map1count + 1) 
                    player:clientiprintln(map1count)
                    game:executecommand("sayraw ^:" .. player.name .. " ^7voted for: ^:" .. maptoname(maps[maps_to_vote[1]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[1]]))
                    player:playlocalsound("mp_challenge_complete")
                    zed.mapvote1votes:setvalue(map1count)
                end
            end)
            player:notifyonplayercommand("map2votebind", "+actionslot 4")
            player:onnotifyonce("map2votebind", function() 
                if not voted then
                    voted = true
                    map2count = (map2count + 1) 
                    player:clientiprintln(map2count)
                    game:executecommand("sayraw ^:" .. player.name .. " ^7voted for: ^:" .. maptoname(maps[maps_to_vote[2]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[2]]))
                    player:playlocalsound("mp_challenge_complete")
                    zed.mapvote2votes:setvalue(map2count)
                end
            end)
            player:notifyonplayercommand("map3votebind", "+actionslot 2")
            player:onnotifyonce("map3votebind", function() 
                if not voted then
                    voted = true
                    map3count = (map3count + 1) 
                    player:clientiprintln(map3count)
                    game:executecommand("sayraw ^:" .. player.name .. " ^7voted for: ^:" .. maptoname(maps[maps_to_vote[3]]) .. " " .. gametypetostring(gametypes[gametypes_to_vote[3]]))
                    player:playlocalsound("mp_challenge_complete")
                    zed.mapvote3votes:setvalue(map3count)
                end
            end)
        end)
        
        player:onnotifyonce("disconnect", function ()
            disconnectListener:clear()
        end)
    end
end

local function starts_with(str, start)
    return str:sub(1, #start) == start
end

function entity:is_bot()
    if (starts_with(self:getguid(), "bot")) then
        return true
    else
        return false
    end
end

function tablefind(tab,el)
	for index, value in pairs(tab) do
		if value == el then
			return index
		end
	end
	return nil
end
