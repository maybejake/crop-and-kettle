particle minecraft:poof ~ ~0.3 ~ 0.2 0.2 0.2 0.02 20
playsound ui.hud.bubble_pop block @a ~ ~ ~ 1 1

execute run data modify storage cnk:temp doughboy.rotation set from entity @s Rotation[0]
execute at @s align xyz positioned ~0.5 ~ ~0.5 run function cnk:doughboy/macro with storage cnk:temp doughboy

execute on passengers run kill @s
kill @s

advancement grant @p[tag=cnk.doughboy_advancement] only cnk:visible/sourdough_boy
tag @p[tag=cnk.doughboy_advancement] remove cnk.doughboy_advancement