scoreboard players set @s cnk.use_cooldown 5

execute at @s anchored eyes positioned ^ ^ ^2 run function cnk:spirit_sprite/summon
execute at @s anchored eyes positioned ^ ^ ^2 run particle minecraft:effect{color:9447257} ~ ~ ~ 0.2 0.2 0.2 0.1 20 force

execute if predicate cnk:sprite/mainhand run return run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
execute if predicate cnk:sprite/offhand run return run item modify entity @s[gamemode=!creative] weapon.offhand {"function":"minecraft:set_count","count":-1,"add":true}