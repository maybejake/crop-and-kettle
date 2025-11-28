execute if score @s cnk.candy_count matches 1.. run function cnk:candy_bowl/item/clear

execute on passengers run kill @s
kill @s

playsound block.wood.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:black_concrete_powder"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot cnk:tools/candy_bowl