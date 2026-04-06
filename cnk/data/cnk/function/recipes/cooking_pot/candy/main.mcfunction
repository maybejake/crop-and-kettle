function cnk:recipes/remove_generic/dye_color

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/cooking_pot/candy/macro with storage cnk:temp cooking_pot

function cnk:cooking_pot/effects/finish_cooking