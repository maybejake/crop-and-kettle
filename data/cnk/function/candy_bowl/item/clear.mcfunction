scoreboard players set @s cnk.candy_count 0

execute if data entity @s item.components."minecraft:custom_data".candy.white run function cnk:candy_bowl/item/remove_color {color:"white"}
execute if data entity @s item.components."minecraft:custom_data".candy.light_gray run function cnk:candy_bowl/item/remove_color {color:"light_gray"}
execute if data entity @s item.components."minecraft:custom_data".candy.gray run function cnk:candy_bowl/item/remove_color {color:"gray"}
execute if data entity @s item.components."minecraft:custom_data".candy.black run function cnk:candy_bowl/item/remove_color {color:"black"}
execute if data entity @s item.components."minecraft:custom_data".candy.brown run function cnk:candy_bowl/item/remove_color {color:"brown"}
execute if data entity @s item.components."minecraft:custom_data".candy.red run function cnk:candy_bowl/item/remove_color {color:"red"}
execute if data entity @s item.components."minecraft:custom_data".candy.orange run function cnk:candy_bowl/item/remove_color {color:"orange"}
execute if data entity @s item.components."minecraft:custom_data".candy.yellow run function cnk:candy_bowl/item/remove_color {color:"yellow"}
execute if data entity @s item.components."minecraft:custom_data".candy.lime run function cnk:candy_bowl/item/remove_color {color:"lime"}
execute if data entity @s item.components."minecraft:custom_data".candy.green run function cnk:candy_bowl/item/remove_color {color:"green"}
execute if data entity @s item.components."minecraft:custom_data".candy.cyan run function cnk:candy_bowl/item/remove_color {color:"cyan"}
execute if data entity @s item.components."minecraft:custom_data".candy.light_blue run function cnk:candy_bowl/item/remove_color {color:"light_blue"}
execute if data entity @s item.components."minecraft:custom_data".candy.blue run function cnk:candy_bowl/item/remove_color {color:"blue"}
execute if data entity @s item.components."minecraft:custom_data".candy.purple run function cnk:candy_bowl/item/remove_color {color:"purple"}
execute if data entity @s item.components."minecraft:custom_data".candy.magenta run function cnk:candy_bowl/item/remove_color {color:"magenta"}
execute if data entity @s item.components."minecraft:custom_data".candy.pink run function cnk:candy_bowl/item/remove_color {color:"pink"}
execute if data entity @s item.components."minecraft:custom_data".candy.corn run function cnk:candy_bowl/item/remove_color {color:"corn"}
execute if data entity @s item.components."minecraft:custom_data".candy.caramel run function cnk:candy_bowl/item/remove_color {color:"caramel"}
execute if data entity @s item.components."minecraft:custom_data".candy.cane run function cnk:candy_bowl/item/remove_color {color:"cane"}


function cnk:candy_bowl/update

playsound minecraft:item.bundle.drop_contents block @a ~ ~ ~ 1 1.2
playsound minecraft:block.wood.hit block @a ~ ~ ~ 1 2
playsound minecraft:block.cherry_leaves.step block @a ~ ~ ~ 1 1
playsound cnk:block.candy_bowl.laugh block @a ~ ~ ~ 1 1

setblock ~ ~ ~ minecraft:player_head{components:{"minecraft:profile":{texture:"cnk:block/transparent_head"}}}
setblock ~ ~ ~ minecraft:air