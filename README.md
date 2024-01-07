# VN-Weed
A WIP Marijuana System for Project Zomboid

Created With the Hope that it helps others Create their own mods, Feel free to edit, redistribute as you wish, Proper Credit would be nice though! 

**Adding your Own Items**
Lets start simple. You want an item, you make an item using the following format

```
item testitem
{
    DisplayCategory = Junk,
    Weight = 0.01,
    Type = Normal,
    DisplayName = Display Name Here,
    Icon = image,
    Wet = FALSE,
}
```

That's It, an item is created. Now to make that Item Craftable (if we wish) 

```
recipe Test Item
{
    keep testitem,
    nails=4,

    Result:TestItemWithNails,
    Time: 120.0,
    NeedToBeLearn:FALSE,
}
```
Thats it, Now their is a recipe for the item named TestItemWithNails. However we also need to make sure there is an item with that name. This would simply be
```
item TestItemWithNails
{
    DisplayCategory = Junk,
    Weight = 0.01,
    Type = Normal,
    DisplayName = Display Name Here,
    Icon = image,
    Wet = FALSE,
}
```

Now when a User has both of the items, nails and our test Item, They will be able to craft the TestItemWithNails Item. 

Pretty simple and straight forward. For Further Documentation on Variables that can be set on Items Visit this link: https://pzwiki.net/wiki/Scripts_guide/Item_Script_Parameters
For Further Documentation Regarding Recipe variable, visit this link: https://pzwiki.net/wiki/Scripts_guide/Recipe_Script_Guide

Onto Creating your Lua Functions in order to call the items you've created, into the game world. 

You can reference the script located in /media/lua/server/Distrubutions.lua
these are very basic lua calls and functions, I suggest referencing other mods in order to find out container names etc. 

**PLANS FOR THE FUTURE**

Marijuana Cultivation
Marijuana Specific Traits and Skills
Marijuana Specific Recipes
