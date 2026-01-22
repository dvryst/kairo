local function GetUniverseId(PlaceId)
    return game:GetService("HttpService"):JSONDecode(game:HttpGet(("https://apis.roblox.com/universes/v1/places/%s/universe"):format(PlaceId))).universeId
end

local UniverseId = GetUniverseId(game.PlaceId)

local Scripts = {
    [66654135] = "murder-mystery.luau",
    [8779464785] = "tap-simulator.luau"
}

local Current = Scripts[UniverseId]

if not _G.Kairo_Hub_Executed then
    _G.Kairo_Hub_Executed = true

    if Current then
        loadstring(game:HttpGet(("https://github.com/dvryst/kairo/blob/main/%s?raw=true"):format(Current)))()
    else
        --Universal Script Coming Soon
    end
end
