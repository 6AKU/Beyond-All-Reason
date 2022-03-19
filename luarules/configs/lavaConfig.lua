local mapName = Game.mapName:lower()
Spring.Echo("Lava Mapname", mapName)
lavaMap = false

-- defaults:
nolavaburstcegs = false
lavaLevel = 1 -- pre-game lava level
lavaGrow = 0.25 -- initial lavaGrow speed
lavaDamage = 100 -- damage per second
lavaUVscale = 2.5 -- How many times to tile the lava texture across the entire map
lavaColorCorrection = "vec3(1.0, 1.0, 1.0)" -- final colorcorrection on all lava + shore coloring
lavaLOSdarkness = 0.5 -- how much to darken the out-of-los areas of the lava plane
lavaSwirlFreq = 0.025 -- How fast the main lava texture swirls around default 0.025
lavaSwirlAmp = 0.003 -- How much the main lava texture is swirled around default 0.003
lavaSpecularExp = 64.0 -- the specular exponent of the lava plane
lavaShadowStrength = 0.4 -- how much light a shadowed fragment can recieve
lavaCoastWidth = 20.0 -- how wide the coast of the lava should be
lavaCoastColor = "vec3(2.0, 0.5, 0.0)" -- the color of the lava coast
lavaCoastLightBoost = 0.6 -- how much extra brightness should coastal areas get

lavaParallaxDepth = 16.0 -- set to >0 to enable, how deep the parallax effect is
lavaParallaxOffset = 0.5 -- center of the parallax plane, from 0.0 (up) to 1.0 (down)
lavaFogColor = "vec3(2.0, 0.5, 0.0)" -- the color of the fog light
lavaFogFactor = 0.06 -- how dense the fog is
lavaTideamplitude = 2 -- how much lava should rise up-down on static level
lavaTideperiod = 200 -- how much time between live rise up-down


--[[ EXAMPLE
    
addTideRhym(HeightLevel, Speed, Delay for next TideRhym in seconds)

if string.find(mapName, "quicksilver") then
    lavaMap = true
    lavaMinHeight = 137 -- minheight of map smf - otherwise will use 0
    lavaLevel = 220
    lavaGrow = 0.25
    lavaDamage = 100
    if (gadgetHandler:IsSyncedCode()) then
        addTideRhym (-21, 0.25, 5*10)
        addTideRhym (150, 0.25, 3)
        addTideRhym (-20, 0.25, 5*10)
        addTideRhym (150, 0.25, 5)
        addTideRhym (-20, 1, 5*60)
        addTideRhym (180, 0.5, 60)
        addTideRhym (240, 0.2, 10)
    end
end

]]


if string.find(mapName, "incandescence") then
    lavaMap = true
    lavaLevel = 209 -- pre-game lava level
    lavaDamage = 150 -- damage per second
    lavaTideamplitude = 3
    lavaTideperiod = 95
    if isLavaGadget and isLavaGadget == "synced" then
        addTideRhym (208, 0.25, 5*6000) -- needs to be -1 than pre-game lava level
    end


elseif string.find(mapName, "ghenna") then
    lavaMap = true
    lavaLevel = 251 -- pre-game lava level
    lavaDamage = 750 -- damage per second
    lavaColorCorrection = "vec3(0.7, 0.7, 0.7)"
    lavaSwirlFreq = 0.017
    lavaSwirlAmp = 0.0024
    lavaTideamplitude = 3
    lavaSpecularExp = 4.0
    lavaShadowStrength = 0.9
    lavaCoastLightBoost = 0.8
    lavaUVscale = 1.5
    if isLavaGadget and isLavaGadget == "synced" then
        addTideRhym (250, 0.10, 15) -- needs to be -1 than pre-game lava level
        addTideRhym (415, 0.05, 30)
        addTideRhym (250, 0.10, 5*60)
        addTideRhym (415, 0.05, 30)
        addTideRhym (250, 0.10, 5*60)
        addTideRhym (415, 0.05, 3*30)
        addTideRhym (250, 0.10, 10*60)
    end


elseif string.find(mapName, "hotstepper") then
    lavaMap = true
    lavaLevel = 100 -- pre-game lava level
    lavaDamage = 150 -- damage per second
    if isLavaGadget and isLavaGadget == "synced" then
        addTideRhym (99, 0.25, 5*60) -- needs to be -1 than pre-game lava level
        addTideRhym (236, 0.10, 5)
        addTideRhym (100, 0.25, 5*60)
        addTideRhym (236, 0.10, 5)
        addTideRhym (100, 0.25, 5*60)
        addTideRhym (300, 0.20, 1)
        addTideRhym (355, 0.10, 30)
        addTideRhym (395, 0.07, 9)
    end

elseif string.find(mapName, "zed remake") then
    lavaMap = true
    lavaGrow = 0
    lavaLevel = 1 -- pre-game lava level
    lavaDamage = 15 -- damage per second
    lavaColorCorrection = "vec3(0.4, 0.09, 1.2)"
    lavaLOSdarkness = 0.8
    lavaCoastColor = "vec3(0.8, 0.03, 1.1)"
    lavaFogColor = "vec3(0.60, 0.10, 1.1)"
    lavaCoastLightBoost = 1.3
    lavaTideamplitude = 1.5 -- how much lava should rise up-down on static level
    lavaTideperiod = 150 -- how much time between live rise up-down
    if isLavaGadget and isLavaGadget == "synced" then
        addTideRhym (0, 0.3, 5*6000)
    end


elseif string.find(mapName, "acidicquarry") then
    lavaMap = true
    lavaGrow = 0
    nolavaburstcegs = true
    lavaLevel = 1
    lavaColorCorrection = "vec3(0.15, 1.0, 0.03)"
    lavaCoastColor = "vec3(0.15, 0.7, 0.03)"
    lavaCoastLightBoost = 1.5
    lavaCoastWidth = 15.0 -- how wide the coast of the lava should be
    lavaFogColor = "vec3(0.90, 0.60, 0.15)"
    --lavaCoastWidth = 30.0
    lavaParallaxDepth = 32.0 -- set to >0 to enable, how deep the parallax effect is
    lavaParallaxOffset = 0.2 -- center of the parallax plane, from 0.0 (up) to 1.0 (down)
    lavaSwirlFreq = 0.008
    lavaSwirlAmp = 0.017
    lavaUVscale = 2.2
    lavaSpecularExp = 12.0
    lavaFogFactor = 0.08
    lavaTideamplitude = 16
    lavaTideperiod = 75
    if isLavaGadget and isLavaGadget == "synced" then
        addTideRhym (1, 0.05, 5*6000)
    end


elseif string.find(mapName, "speedmetal") then
    lavaMap = true
    lavaGrow = 0 
    nolavaburstcegs = true
    lavaLevel = 1 -- pre-game lava level
    lavaColorCorrection = "vec3(0.3, 0.1, 1.5)"
    --lavaCoastWidth = 40.0
    --lavaCoastColor = "vec3(1.7, 0.02, 1.4)"
    lavaFogColor = "vec3(0.60, 0.02, 1)"
    lavaSwirlFreq = 0.025
    lavaSwirlAmp = 0.003
    lavaTideamplitude = 3
    lavaTideperiod = 50
    if isLavaGadget and isLavaGadget == "synced" then
        addTideRhym (1, 0.05, 5*6000)
    end


elseif Game.waterDamage > 0 then -- Waterdamagemaps - keep at the very bottom
    lavaMap = true
    lavaGrow = 0
    lavaLevel = 1
    if isLavaGadget and isLavaGadget == "synced" then
        addTideRhym (1, 0.25, 5*6000)
    end
end


