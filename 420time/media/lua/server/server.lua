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
            fu
}