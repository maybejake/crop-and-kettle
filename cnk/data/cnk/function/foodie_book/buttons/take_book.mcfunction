function cnk:foodie_book/buttons/close
execute unless entity @s[tag=cnk.via_lectern] run return fail

execute store result storage cnk:temp lectern.x int 1 run scoreboard players get @s cnk.lectern_x
execute store result storage cnk:temp lectern.y int 1 run scoreboard players get @s cnk.lectern_y
execute store result storage cnk:temp lectern.z int 1 run scoreboard players get @s cnk.lectern_z

scoreboard players set $take_success cnk.dummy 1
function cnk:cookbook/buttons/take_book/macro with storage cnk:temp lectern
execute if score $take_success cnk.dummy matches 0 run return fail

loot give @s loot cnk:other/foodie_book