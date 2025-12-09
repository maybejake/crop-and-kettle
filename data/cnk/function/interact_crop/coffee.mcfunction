data modify entity @s item.components."minecraft:item_model" set value "cnk:coffee_crop_6"
scoreboard players set @s cnk.age 6

execute at @s run playsound minecraft:block.crop.break block @a ~ ~ ~ 1 1
execute at @s positioned ~ ~0.5 ~ run function cnk:crops/coffee/reward
