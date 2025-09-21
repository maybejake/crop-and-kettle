tag @s remove cnk.grape_loot

scoreboard players set $distance cnk.dummy 0

#store reach
execute store result score $reach cnk.dummy run attribute @s minecraft:block_interaction_range get 100

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function cnk:seeds/grape/loot/ray/ray