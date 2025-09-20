data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fries"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fried_fish"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

loot spawn ~ ~0.25 ~ loot cnk:food/fish_and_chips

function cnk:cooking_pot/effects/finish_cooking