scoreboard players set $total_items cnk.dummy 0
scoreboard players set $loops cnk.dummy 0
data modify storage cnk:temp picnic_basket.update.lore set value []

data modify storage cnk:temp picnic_basket.update.items set from entity @s item.components."minecraft:bundle_contents"
execute if data storage cnk:temp picnic_basket.update.items[] run function cnk:picnic_basket/interact/update/loop

# set new count
execute store result entity @s item.components."minecraft:custom_data".cnk.picnic_basket.count int 1 run scoreboard players get $total_items cnk.dummy

# set lore
data modify storage cnk:temp picnic_basket.update.lore append value {translate:"cnk.tooltip",font:"cnk:tooltip",color:"white",italic:false}
data modify entity @s item.components."minecraft:lore" set from storage cnk:temp picnic_basket.update.lore