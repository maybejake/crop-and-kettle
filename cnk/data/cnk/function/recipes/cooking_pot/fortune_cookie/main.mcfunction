data remove storage cnk:temp fortune_cookie

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:paper"}].Slot
data modify storage cnk:temp fortune_cookie.paper set from storage cnk:temp cooking_pot.Items[{id:"minecraft:paper"}]
function cnk:recipes/remove with storage cnk:temp cooking_pot

# handle fortune
data modify storage cnk:temp fortune_cookie.fortune.text set from storage cnk:temp fortune_cookie.paper.components."minecraft:custom_name"
execute unless data storage cnk:temp fortune_cookie.fortune run function cnk:recipes/cooking_pot/fortune_cookie/generate/main

# handle lucky numbers
data modify storage cnk:temp fortune_cookie.lucky_numbers set value [0,0,0]
execute store result storage cnk:temp fortune_cookie.lucky_numbers[0] int 1 run random value 1..99
execute store result storage cnk:temp fortune_cookie.lucky_numbers[1] int 1 run random value 1..99
execute store result storage cnk:temp fortune_cookie.lucky_numbers[2] int 1 run random value 1..99

# spawn fortune cookie
function cnk:recipes/cooking_pot/fortune_cookie/macro with storage cnk:temp fortune_cookie

function cnk:cooking_pot/effects/finish_cooking