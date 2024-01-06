# VN-Weed
A WIP Marijuana System for Project Zomboid

This system is using Evolved Recipe Variables to control crafting various Smokeable items! 
It is being designed from the ground up with explicit use of documentation, thus making it a great
starting point for anyone wanting to add their own custom Items into the game. 

Some important Information

it took me some time to understand how exactly EvolvedRecipes Work, After some time I came to the obvious answer, the answer thats not really expressed in any of the wiki's

Here is our example

Lets say we want to make a sandwhich item that needs both bread and cold cuts
We create our 3 Items in total ( one for sandwhich bread, one for cold cuts, and one for our finished Sandwhich ) 
```
item Bread
{
    DisplayName = Bread,
    DisplayCategory = Food,
    Type = Food,
    HungerChange = -2,
    Weight = 0.1,
    EvolvedRecipe = Sandwhich:1,
}
```
As you can see under the **EvolvedRecipe** variable we have defined that this only needs ONE of this item to craft the recipe ( shown after the : ) 

Now we create our second item, the cold cuts
```
item ColdCuts
{
    DisplayName = Cold Cuts,
    Display Category = Food,
    Type = Food,
    HungerChange = -3,
    ThirstChange = -1,
    Weight = 0.01,
    EvolvedRecipe = Sandwhich:2,
}
```
Now we have created the second of three items. Again you can see the number of required items to create the final recipe after the semicolon. Now we have 2 items both being called to be able to create an item called "Sandwhich" So lets create the sandwhich item! 
```
item Sandwhich
{
    DisplayName = Sandwhich,
    DisplayCategory = Food,
    Type = Food,
    HungerChange = -6,
    Thirst Change = -2,
    Weight = 0.02,
    EvolvedRecipeName = Sandwhich,
}
```
As you can see we didnt use the Regular EvolvedRecipe Variable as we did in the first two items, because this item is the result of combining the other two items together. Instead we use the **EvolvedRecipeName** variable to define the name of the recipe (the same name the other two items are looking for) 

Now that this is complete, taking 1 bread and 2 cold cuts will combine into one sandwhich!

**NOTE : THIS IS NOT ALL YOU NEED TO DO TO CREATE NEW ITEMS, THIS IS SIMPLY AN EXPLANATION ON EDITING THE WEED.TXT ITEMS DOCUMENT. THIS READ ME WILL CONTINUE TO EXPAND AS MORE AND MORE CODE IS ADDED TO THE MOD** 
