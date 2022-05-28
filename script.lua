local url = ""

local games = {
    [5602055394] = "Hood Modded";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]

return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
