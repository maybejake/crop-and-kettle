advancement revoke @s only cnk:hit_gift

scoreboard players set $hit_gift_check cnk.dummy 0

tag @s add cnk.hit_gift
execute as @e[type=minecraft:interaction,tag=cnk.gift_interaction,distance=..20] run function cnk:gift/hit/check
tag @s remove cnk.hit_gift