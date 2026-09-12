data modify storage cnk:temp durability.damage set from storage cnk:temp loot_table.output.components."minecraft:damage"
data modify storage cnk:temp durability.max_damage set from storage cnk:temp loot_table.output.components."minecraft:max_damage"
data modify storage cnk:temp durability.unbreaking set from storage cnk:temp loot_table.output.components."minecraft:enchantments"."minecraft:unbreaking"

# calculate damage
data modify storage cnk:temp durability.damage set compute default integer cnk:durability