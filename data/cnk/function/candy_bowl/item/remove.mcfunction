data modify storage cnk:temp candy_bowl.items set value []
execute if data entity @s item.components."minecraft:custom_data".candy.white run data modify storage cnk:temp candy_bowl.items append value "white"
execute if data entity @s item.components."minecraft:custom_data".candy.light_gray run data modify storage cnk:temp candy_bowl.items append value "light_gray"
execute if data entity @s item.components."minecraft:custom_data".candy.gray run data modify storage cnk:temp candy_bowl.items append value "gray"
execute if data entity @s item.components."minecraft:custom_data".candy.black run data modify storage cnk:temp candy_bowl.items append value "black"
execute if data entity @s item.components."minecraft:custom_data".candy.brown run data modify storage cnk:temp candy_bowl.items append value "brown"
execute if data entity @s item.components."minecraft:custom_data".candy.red run data modify storage cnk:temp candy_bowl.items append value "red"
execute if data entity @s item.components."minecraft:custom_data".candy.orange run data modify storage cnk:temp candy_bowl.items append value "orange"
execute if data entity @s item.components."minecraft:custom_data".candy.yellow run data modify storage cnk:temp candy_bowl.items append value "yellow"
execute if data entity @s item.components."minecraft:custom_data".candy.lime run data modify storage cnk:temp candy_bowl.items append value "lime"
execute if data entity @s item.components."minecraft:custom_data".candy.green run data modify storage cnk:temp candy_bowl.items append value "green"
execute if data entity @s item.components."minecraft:custom_data".candy.cyan run data modify storage cnk:temp candy_bowl.items append value "cyan"
execute if data entity @s item.components."minecraft:custom_data".candy.light_blue run data modify storage cnk:temp candy_bowl.items append value "light_blue"
execute if data entity @s item.components."minecraft:custom_data".candy.blue run data modify storage cnk:temp candy_bowl.items append value "blue"
execute if data entity @s item.components."minecraft:custom_data".candy.purple run data modify storage cnk:temp candy_bowl.items append value "purple"
execute if data entity @s item.components."minecraft:custom_data".candy.magenta run data modify storage cnk:temp candy_bowl.items append value "magenta"
execute if data entity @s item.components."minecraft:custom_data".candy.pink run data modify storage cnk:temp candy_bowl.items append value "pink"
execute if data entity @s item.components."minecraft:custom_data".candy.corn run data modify storage cnk:temp candy_bowl.items append value "corn"
execute if data entity @s item.components."minecraft:custom_data".candy.caramel run data modify storage cnk:temp candy_bowl.items append value "caramel"

execute store result storage cnk:temp candy_bowl.item_count int 1 run data get storage cnk:temp candy_bowl.items
function cnk:candy_bowl/item/pick_index with storage cnk:temp candy_bowl
function cnk:candy_bowl/item/get_color with storage cnk:temp candy_bowl

function cnk:candy_bowl/item/get_count with storage cnk:temp candy_bowl
scoreboard players remove $count cnk.dummy 1
function cnk:candy_bowl/item/set_count with storage cnk:temp candy_bowl
function cnk:candy_bowl/item/spawn_candy with storage cnk:temp candy_bowl

execute if score $count cnk.dummy matches ..0 run function cnk:candy_bowl/item/remove_data with storage cnk:temp candy_bowl

playsound item.bundle.remove_one block @a ~ ~ ~ 1 1.2
playsound minecraft:block.wood.hit block @a ~ ~ ~ 1 2
playsound minecraft:block.cherry_leaves.step block @a ~ ~ ~ 1 1

setblock ~ ~ ~ minecraft:player_head{components:{"minecraft:profile":{texture:"cnk:block/transparent_head"}}}
setblock ~ ~ ~ minecraft:air

scoreboard players remove @s cnk.candy_count 1
function cnk:candy_bowl/update