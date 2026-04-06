data remove storage cnk:temp candy_bowl.color
data modify storage cnk:temp candy_bowl.color set from entity @p[tag=cnk.interact_candy_bowl] SelectedItem.components."minecraft:custom_data".cnk.candy.color

execute if data storage cnk:temp candy_bowl{color:"cane"} run advancement grant @p[tag=cnk.interact_candy_bowl] only cnk:visible/synergy

execute unless data storage cnk:temp candy_bowl.color run return fail

function cnk:candy_bowl/item/get_count with storage cnk:temp candy_bowl
scoreboard players add $count cnk.dummy 1
function cnk:candy_bowl/item/set_count with storage cnk:temp candy_bowl

scoreboard players add @s cnk.candy_count 1

item modify entity @p[tag=cnk.interact_candy_bowl] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}

playsound item.bundle.insert block @a ~ ~ ~ 1 1.2
playsound minecraft:block.wood.hit block @a ~ ~ ~ 1 2
playsound minecraft:block.cherry_leaves.step block @a ~ ~ ~ 1 1

setblock ~ ~ ~ minecraft:player_head{components:{"minecraft:profile":{texture:"cnk:block/transparent_head"}}}
setblock ~ ~ ~ minecraft:air

function cnk:candy_bowl/update