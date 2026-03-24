item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}

swing @s mainhand
execute if data storage cnk:temp pail{current_liquid:"water"} if predicate cnk:inventory_full run return run loot spawn ~ ~1 ~ loot cnk:other/water_bucket
execute if data storage cnk:temp pail{current_liquid:"milk"} if predicate cnk:inventory_full run return run loot spawn ~ ~1 ~ loot cnk:other/milk_bucket
execute if data storage cnk:temp pail{current_liquid:"water"} run return run loot give @s loot cnk:other/water_bucket
execute if data storage cnk:temp pail{current_liquid:"milk"} run return run loot give @s loot cnk:other/milk_bucket

#wahdon support
function #cnk:addons/pail/bucket_filled