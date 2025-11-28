advancement revoke @s only cnk:freezing_sundae

execute at @s run playsound minecraft:entity.player.hurt_freeze neutral @s ~ ~ ~ 1 1

execute at @s run particle minecraft:snowflake ~ ~1 ~ 0.2 0.5 0.2 0.2 100 force
execute at @s run particle minecraft:item_snowball ~ ~1 ~ 0.2 0.5 0.2 0.3 100 force

effect give @s minecraft:slowness 120 4 false
effect give @s minecraft:resistance 120 3 false
effect give @s minecraft:mining_fatigue 120 0 false