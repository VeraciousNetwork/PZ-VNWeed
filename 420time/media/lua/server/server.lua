--imports Base
module NoFaces420time {
}
    imports {
        Base
    }
-- Fetches Item Tags
    [Recipe.GetItemTypes.Medical]=2
        function Recipe.GetItemTypes.Medical(scriptItems)
        scriptItems:addAll(getScriptManager():getItemsTag("Marijuana"))
    end

    OnTest:Recipe.OnTest.IsNotWorn,
    function Recipe.OnTest.IsNotWorn(item)
        if instanceof(item, "Marijauna") then
        return not item:canUse()
        end
        return true
    end

    OnCreate:Recipe.OnCreate.Dismantle,

    function Recipe.onCreate.Dismantle(items, result, player)
        player:getInventory():AddItem("Base.BrokenGlass");
    end
}