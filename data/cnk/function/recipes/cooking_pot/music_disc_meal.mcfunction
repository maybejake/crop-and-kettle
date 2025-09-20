function cnk:recipes/remove_generic/disc

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"thankful_meal"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

loot spawn ~ ~0.25 ~ loot cnk:other/music_disc_meal

function cnk:cooking_pot/effects/finish_cooking
