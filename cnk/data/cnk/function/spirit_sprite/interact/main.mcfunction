advancement revoke @s only cnk:hit_sprite

tag @s add cnk.interact_sprite
execute as @n[type=minecraft:interaction,tag=cnk.sprite_interaction,nbt={attack:{}},distance=..20] run function cnk:spirit_sprite/interact/on_interaction
tag @s remove cnk.interact_sprite