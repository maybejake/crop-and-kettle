advancement revoke @s only cnk:interact_scarecrow

tag @s add cnk.interact_scarecrow
execute as @n[type=minecraft:interaction,tag=cnk.scarecrow_interaction,nbt={interaction:{}},distance=..20] at @s run function cnk:scarecrow/interact/on_interaction
tag @s remove cnk.interact_scarecrow