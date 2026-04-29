# setup lore entry
data modify storage cnk:temp picnic_basket.update.lore_entry set value {translate:"container.cnk.picnic_basket.more", with:[], color:"white", italic:true}

# get remainder
execute store result score $length cnk.dummy run data get entity @s item.components."minecraft:bundle_contents"
scoreboard players remove $length cnk.dummy 5

execute store result storage cnk:temp picnic_basket.update.remainder int 1 run scoreboard players get $length cnk.dummy
data modify storage cnk:temp picnic_basket.update.lore_entry.with append from storage cnk:temp picnic_basket.update.remainder

# append to lore
data modify storage cnk:temp picnic_basket.update.lore append from storage cnk:temp picnic_basket.update.lore_entry