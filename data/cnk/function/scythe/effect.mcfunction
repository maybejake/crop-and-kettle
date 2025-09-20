#cooldown
execute store result score @s cnk.scythe_cooldown run time query gametime
scoreboard players add @s cnk.scythe_cooldown 5
schedule function cnk:scythe/cooldown 5t append

execute if predicate cnk:scythe/offhand run tag @s add cnk.scythe_offhand
execute if predicate cnk:scythe/mainhand run tag @s add cnk.scythe_mainhand
execute if predicate cnk:scythe/mainhand run tag @s remove cnk.scythe_offhand

execute store result score $reach cnk.dummy run attribute @s minecraft:block_interaction_range get 5
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function cnk:scythe/ray/start

tag @s remove cnk.scythe_mainhand
tag @s remove cnk.scythe_offhand