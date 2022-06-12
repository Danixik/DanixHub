if game.GameId == 893973440 then --FLEE THE FACILITY
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Danixik/games/main/fleethefacility.lua", true))()
elseif game.GameId == 6284583030 then --PSX
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Danixik/games/main/psx.lua", true))()
elseif game.GameId ~= 893973440 or 6284583030 then
    print('| DanixHub |')
    wait(.02)
    print('Unsupported game, universal soon.')
end
