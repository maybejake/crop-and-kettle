advancement revoke @s only cnk:interact_gift

scoreboard players set $interact_gift_check cnk.dummy 0

tag @s add cnk.interact_gift
execute as @e[type=minecraft:interaction,tag=cnk.gift_interaction,distance=..20] run function cnk:gift/interact/check
tag @s remove cnk.interact_gift