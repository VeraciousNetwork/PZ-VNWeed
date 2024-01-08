if ProceduralDistributions ~= nil then
    if isClient() then return end
    end


    require "Farming/SFarmingSystem"
    require "Farming/SPlantGlobalObject"
    require "Map/CGlobalObject"

    -- Grow the Plant
    function sFarmingSystem:growPlant(luaObject, nextGrowing, updateNbOfGrow)
        if(luaObject.state == "seeded") then
            local new= luaObject.mbOfGrow <= 0

            if (getActivatedMods():contains("FarmingNeverRot")) then
                if (luaObject.nbOfGrow >6) then
                    luaObject.nbOfGrow =6
                end
            end

            if(luaObject.typeOfSeed == "GreenCrack") then
                luaObject = farming_vegetableconf.growGreenCrack(luaObject, nextGrowing, updateNbOfGrow)
            elseif(luaObject.typeOfSeed == "PurpleKush") then
                luaObject = farming_vegetableconf.growPurpleKush(luaObject, nextGrowing, updateNbOfGrow)
            elseif(luaObject.typeOfSeed == "NorthernLights") then
                luaObject = farming_vegetableconf.growNorthernLights(luaObject, nextGrowing, updateNbOfGrow)
            elseif(luaObject.typeOfSeed == "PineappleExpress") then
                luaObject = farming_vegetableconf.growPineappleExpress(luaObject, nextGrowing, updateNbOfGrow)
            elseif(luaObject.typeOfSeed == "BruceBanner") then
                luaObject = farming_vegetableconf.growBruceBanner(luaObject, nextGrowing, updateNbOfGrow)
            elseif(luaObject.typeOfSeed == "Potatoes") then
                luaObject = farming_vegetableconf.growPotato(luaObject, nextGrowing, updateNbOfGrow)
            elseif(luaObject.typeOfSeed == "Cabbages") then
                if farming_vegetableconf.props[luaObject.typeOfSeed].growCode ~= nil then
                    local growCode = farming_vegetableconf.props[luaObject.typeOfSeed].growCode
                    luaObject = assert(loadstring('return '..growCode..'(...)'))(luaObject, nextGrowing, updateNbOfGrow)
                end
        end
    end