# this is the callback functions thats called when a player removes the liquid from the basin using a glass bottle!
# removal of the glass bottle from the player is handled by cnk, all you need to do is give the player the right item
give @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:healing"}] 1

# its possible, if you're using loot tables, that you need to add handling for when the player's inventory is full. cnk provides a predicate to check for that, see the example code below:
# execute if entity @s[predicate=cnk:inventory_full] run return run loot spawn ~ ~ ~ loot cnk:food/beer
# loot give @s loot cnk:food/beer