scoreboard players add @s cnk.mix_time 1

execute if score @s cnk.mix_time matches 1 run playsound cnk:block.mixing_bowl.stir block @a ~ ~ ~ 1 0.8

scoreboard players operation $mix_time cnk.dummy = @s cnk.mix_time
execute on passengers if entity @s[type=minecraft:item_display] at @s rotated as @s run function cnk:mixing_bowl/mix/rotation

execute if score @s cnk.mix_time matches 10.. run tag @s remove cnk.mixing
execute if score @s cnk.mix_time matches 10.. run function cnk:mixing_bowl/mix/finish with entity @s item.components."minecraft:custom_data".cnk
execute if score @s cnk.mix_time matches 10.. run scoreboard players set @s cnk.mix_time 0