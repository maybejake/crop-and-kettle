scoreboard players set @s cnk.crop_version 1

# has a passenger, dont update
execute on passengers if entity @s run return fail

execute align xyz run tp @s ~0.5 ~ ~0.5
data modify entity @s transformation.translation set value [0f,0f,0f]
execute positioned ~ ~-0.5625 ~ run ride @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] mount @s