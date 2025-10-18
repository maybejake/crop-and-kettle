advancement revoke @s only cnk:block

execute store result score $reach cnk.dummy run attribute @s minecraft:block_interaction_range get 2
scoreboard players set $raycast_distance cnk.dummy 0
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function cnk:blocks/ray