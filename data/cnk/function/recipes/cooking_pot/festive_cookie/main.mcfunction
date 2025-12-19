function cnk:recipes/remove_generic/dye_color

function cnk:recipes/remove_generic/milk

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/cooking_pot/festive_cookie/macro with storage cnk:temp cooking_pot

function cnk:cooking_pot/effects/finish_cooking