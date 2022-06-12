if game.PlaceId == 893973440 then --FLEE THE FACILITY
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Danixik/games/main/fleethefacility.lua", true))()
elseif game.PlaceId == 6284583030 then --PSX
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Danixik/games/main/psx.lua", true))()
elseif game.PlaceId == 9017974931 then --VALOBLOX
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Danixik/games/main/valoblox.lua", true))()
else
    game.Players.LocalPlayer:Kick("Game not supported")
    task.wait(1)
    while true do end
end
