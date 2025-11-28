advancement revoke @s only cnk:hit_sprite

scoreboard players set $interact_sprite_check cnk.dummy 0

tag @s add cnk.interact_sprite
execute as @e[type=minecraft:interaction,tag=cnk.sprite_interaction,distance=..20] run function cnk:spirit_sprite/interact/check
tag @s remove cnk.interact_sprite