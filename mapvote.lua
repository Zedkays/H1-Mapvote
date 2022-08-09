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

-- You should only have to edit the config above --

-- If you only want certain maps, edit them below --

local mapstovote1 = { 'mp_convoy', 'mp_backlot', 'mp_bog', 'mp_crash','mp_crossfire', 'mp_citystreets', 'mp_farm', 'mp_overgrown','mp_shipment' }
local mapstovote2 = { 'mp_vacant', 'mp_broadcast', 'mp_carentan','mp_countdown', 'mp_bloc', 'mp_creek', 'mp_pipeline','mp_strike' }
local mapstovote3 = {  'mp_showdown', 'mp_cargoship', 'mp_killhouse', 'mp_crash_snow', 'mp_farm_spring', 'mp_bog_summer' }

-- If you only want certain maps, edit them above (keep them fairly balanced) --

local map1 = mapstovote1[ math.random( #mapstovote1 ) ]
local map2 = mapstovote2[ math.random( #mapstovote2 ) ]
local map3 = mapstovote3[ math.random( #mapstovote3 ) ]

local map1count = 0
local map2count = 0
local map3count = 0

local zed = {}

game:precachesound("mp_challenge_complete")

if map1 == "mp_convoy" then
    map1clean = "Ambush"
elseif map1 == "mp_backlot" then
    map1clean = "Backlot"
elseif map1 == "mp_bog" then
    map1clean = "Bog"
elseif map1 == "mp_crash" then
    map1clean = "Crash"
elseif map1 == "mp_crossfire" then
    map1clean = "Crossfire"
elseif map1 == "mp_citystreets" then
    map1clean = "District"
elseif map1 == "mp_farm" then
    map1clean = "Downpour"
elseif map1 == "mp_overgrown" then
    map1clean = "Overgrown"
elseif map1 == "mp_shipment" then
    map1clean = "Shipment"
elseif map1 == "mp_vacant" then
    map1clean = "Vacant"
elseif map1 == "mp_broadcast" then
    map1clean = "Broadcast"
elseif map1 == "mp_carentan" then
    map1clean = "Chinatown"
elseif map1 == "mp_countdown" then
    map1clean = "Countdown"
elseif map1 == "mp_bloc" then
    map1clean = "Bloc"
elseif map1 == "mp_creek" then
    map1clean = "Creek"
elseif map1 == "mp_pipeline" then
    map1clean = "Pipeline"
elseif map1 == "mp_strike" then
    map1clean = "Strike"
elseif map1 == "mp_showdown" then
    map1clean = "Showdown"
elseif map1 == "mp_cargoship" then
    map1clean = "Wet Work"
elseif map1 == "mp_killhouse" then
    map1clean = "Killhouse"
elseif map1 == "mp_crash_snow" then
    map1clean = "Winter Crash"
elseif map1 == "mp_farm_spring" then
    map1clean = "Day Break"
elseif map1 == "mp_bog_summer" then
    map1clean = "Beach Bog"
end

if map2 == "mp_convoy" then
    map2clean = "Ambush"
elseif map2 == "mp_backlot" then
    map2clean = "Backlot"
elseif map2 == "mp_bog" then
    map2clean = "Bog"
elseif map2 == "mp_crash" then
    map2clean = "Crash"
elseif map2 == "mp_crossfire" then
    map2clean = "Crossfire"
elseif map2 == "mp_citystreets" then
    map2clean = "District"
elseif map2 == "mp_farm" then
    map2clean = "Downpour"
elseif map2 == "mp_overgrown" then
    map2clean = "Overgrown"
elseif map2 == "mp_shipment" then
    map2clean = "Shipment"
elseif map2 == "mp_vacant" then
    map2clean = "Vacant"
elseif map2 == "mp_broadcast" then
    map2clean = "Broadcast"
elseif map2 == "mp_carentan" then
    map2clean = "Chinatown"
elseif map2 == "mp_countdown" then
    map2clean = "Countdown"
elseif map2 == "mp_bloc" then
    map2clean = "Bloc"
elseif map2 == "mp_creek" then
    map2clean = "Creek"
elseif map2 == "mp_pipeline" then
    map2clean = "Pipeline"
elseif map2 == "mp_strike" then
    map2clean = "Strike"
elseif map2 == "mp_showdown" then
    map2clean = "Showdown"
elseif map2 == "mp_cargoship" then
    map2clean = "Wet Work"
elseif map2 == "mp_killhouse" then
    map2clean = "Killhouse"
elseif map2 == "mp_crash_snow" then
    map2clean = "Winter Crash"
elseif map2 == "mp_farm_spring" then
    map2clean = "Day Break"
elseif map2 == "mp_bog_summer" then
    map2clean = "Beach Bog"
end

if map3 == "mp_convoy" then
    map3clean = "Ambush"
elseif map3 == "mp_backlot" then
    map3clean = "Backlot"
elseif map3 == "mp_bog" then
    map3clean = "Bog"
elseif map3 == "mp_crash" then
    map3clean = "Crash"
elseif map3 == "mp_crossfire" then
    map3clean = "Crossfire"
elseif map3 == "mp_citystreets" then
    map3clean = "District"
elseif map3 == "mp_farm" then
    map3clean = "Downpour"
elseif map3 == "mp_overgrown" then
    map3clean = "Overgrown"
elseif map3 == "mp_shipment" then
    map3clean = "Shipment"
elseif map3 == "mp_vacant" then
    map3clean = "Vacant"
elseif map3 == "mp_broadcast" then
    map3clean = "Broadcast"
elseif map3 == "mp_carentan" then
    map3clean = "Chinatown"
elseif map3 == "mp_countdown" then
    map3clean = "Countdown"
elseif map3 == "mp_bloc" then
    map3clean = "Bloc"
elseif map3 == "mp_creek" then
    map3clean = "Creek"
elseif map3 == "mp_pipeline" then
    map3clean = "Pipeline"
elseif map3 == "mp_strike" then
    map3clean = "Strike"
elseif map3 == "mp_showdown" then
    map3clean = "Showdown"
elseif map3 == "mp_cargoship" then
    map3clean = "Wet Work"
elseif map3 == "mp_killhouse" then
    map3clean = "Killhouse"
elseif map3 == "mp_crash_snow" then
    map3clean = "Winter Crash"
elseif map3 == "mp_farm_spring" then
    map3clean = "Day Break"
elseif map3 == "mp_bog_summer" then
    map3clean = "Beach Bog"
end
config.started = false

function mapvote()
    
    config.started = true

    zed.mapvote1background = drawbox("icon", 0, -30, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 1, "white", 200, 20)
    zed.mapvote1map = drawtext("font", "objective", 1, 0, -30, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "Press [{+actionslot 3}] for " .. map1clean)
    zed.mapvote1votes = drawtext("font", "objective", 1, 90, -30, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "0")
    zed.mapvote2background = drawbox("icon", 0, 0, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 1, "white", 200, 20)
    zed.mapvote2map = drawtext("font", "objective", 1, 0, 0, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "Press [{+actionslot 4}] for " .. map2clean)
    zed.mapvote2votes = drawtext("font", "objective", 1, 90, 0, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "0")
    zed.mapvote3background = drawbox("icon", 0, 30, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 1, "white", 200, 20)
    zed.mapvote3map = drawtext("font", "objective", 1, 0, 30, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "Press [{+actionslot 2}] for " .. map3clean)
    zed.mapvote3votes = drawtext("font", "objective", 1, 90, 30, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "0")
    zed.timerbackground = drawbox("icon", 0, 65, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 1, "white", 75, 20)
    zed.timerbar = drawbox("icon", 0, 75, "center", "middle", "center", "middle", vector:new(0.5, 0, 0.5), 1, "white", 75, 3)
    zed.timer = drawtext("font", "objective", 1.7, 0, 64, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, "00:00")
    zed.socials1 = drawtext("font", "objective", 1.1, -5, -60, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, config.socials1)
    zed.socials2 = drawtext("font", "objective", 1.1, -5, -80, "center", "middle", "center", "middle", vector:new(1, 1, 1), 1, config.socials2)
    zed.globalbackground = drawbox("icon", 0, -7, "center", "middle", "center", "middle", vector:new(0.0, 0.0, 0.0), 0.5, "white", 250, 200)
    
    zed.timer:settimer(config.time)     
    local loop = game:oninterval(function ()
        config.time = config.time - 1
        print(config.time)
        for index, player in ipairs(players) do
            player:playsound("ui_mp_timer_countdown")
        end

        if (#players == (map1count + map2count + map3count)) or config.time == 0 then
            if map1count > map2count and map1count > map3count then 
                game:executecommand("sayraw ^7Changing Map to: ^:" .. map1clean .. " ^7with ^:" .. map1count .. " ^7votes!")
                game:executecommand('set sv_maprotationcurrent "gametype dm map ' .. map1 .. '"')
            elseif map2count > map1count and map2count > map3count then 
                game:executecommand("sayraw ^7Changing Map to: ^:" .. map2clean .. " ^7with ^:" .. map2count .. " ^7votes!")
                game:executecommand('set sv_maprotationcurrent "gametype dm map ' .. map2 .. '"')
            elseif map3count > map1count and map3count > map2count then
                game:executecommand("sayraw ^7Changing Map to: ^:" .. map3clean .. " ^7with ^:" .. map3count .. " ^7votes!")
                game:executecommand('set sv_maprotationcurrent "gametype dm map ' .. map3 .. '"')
            else
                game:executecommand("sayraw ^7Changing Map to: ^:" .. map1clean .. "^7!")
                game:executecommand('set sv_maprotationcurrent "gametype dm map ' .. map1 .. '"')
            end
            
            if (#players == (map1count + map2count + map3count)) then
                game:executecommand("sayraw ^:All Players ^7Voted!")
            end

            level:notify("end_vote")
            
            zed.mapvote1background:destroy()
            zed.mapvote1map:destroy() 
            zed.mapvote1votes:destroy() 
            zed.mapvote2background:destroy()
            zed.mapvote2map:destroy()
            zed.mapvote2votes:destroy() 
            zed.mapvote3background:destroy()
            zed.mapvote3map:destroy()
            zed.mapvote3votes:destroy() 
            zed.timerbackground:destroy()
            zed.timerbar:destroy()
            zed.timer:destroy() 
            zed.socials1:destroy()
            zed.socials2:destroy()
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

    mapvote()
end)

function entity:onPlayerDisconnect()
    local index = tablefind(players, self)
	if index ~= nil then
		table.remove(players, index)
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

function mapvoteconnected(player)

    if player:is_bot() == false and not config.started then
        local disconnectListener = player:onnotifyonce("disconnect", function ()  player:onPlayerDisconnect() end)
        
        player:onnotifyonce("start_vote", function ()

            local voted = false

            player:notifyonplayercommand("map1votebind", "+actionslot 3")
            player:onnotifyonce("map1votebind", function() 
                if not voted then
                    print(player.zedvotelimit)
                    voted = true
                    map1count = (map1count + 1) 
                    player:clientiprintln(map1count)
                    game:executecommand("sayraw ^:" .. player.name .. " ^7voted for: ^:" .. map1clean)
                    player:playlocalsound("mp_challenge_complete")
                    zed.mapvote1votes:setvalue(map1count)
                end
            end)
            player:notifyonplayercommand("map2votebind", "+actionslot 4")
            player:onnotifyonce("map2votebind", function() 
                if not voted then
                    print(player.zedvotelimit)
                    voted = true
                    map2count = (map2count + 1) 
                    player:clientiprintln(map2count)
                    game:executecommand("sayraw ^:" .. player.name .. " ^7voted for: ^:" .. map2clean)
                    player:playlocalsound("mp_challenge_complete")
                    zed.mapvote2votes:setvalue(map2count)
                end
            end)
            player:notifyonplayercommand("map3votebind", "+actionslot 2")
            player:onnotifyonce("map3votebind", function() 
                if not voted then
                    print(player.zedvotelimit)
                    voted = true
                    map3count = (map3count + 1) 
                    player:clientiprintln(map3count)
                    game:executecommand("sayraw ^:" .. player.name .. " ^7voted for: ^:" .. map3clean)
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
