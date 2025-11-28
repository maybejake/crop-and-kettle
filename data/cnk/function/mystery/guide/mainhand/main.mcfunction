data modify storage cnk:temp meat_guide.item set from entity @s SelectedItem
loot replace entity @s weapon.mainhand loot cnk:zzz_secret/meat_guide_map
data modify storage cnk:temp meat_guide.map set from entity @s SelectedItem

data modify storage cnk:temp meat_guide.item.components."minecraft:lodestone_tracker".target set value {pos:[0, 0, 0], dimension: "minecraft:overworld", tracked:0b}
data modify storage cnk:temp meat_guide.item.components."minecraft:lodestone_tracker".target.pos[0] set from storage cnk:temp meat_guide.map.components."minecraft:map_decorations".+.x
data modify storage cnk:temp meat_guide.item.components."minecraft:lodestone_tracker".target.pos[1] set value 60
data modify storage cnk:temp meat_guide.item.components."minecraft:lodestone_tracker".target.pos[2] set from storage cnk:temp meat_guide.map.components."minecraft:map_decorations".+.z

execute unless data storage cnk:temp meat_guide.map{id:"minecraft:filled_map"} run data remove storage cnk:temp eat_guide.item.components."minecraft:lodestone_tracker"
execute if data storage cnk:temp meat_guide.map{id:"minecraft:filled_map"} run data modify storage cnk:temp meat_guide.item.components."minecraft:custom_data".cnk.meat_guide.state set value "active"

function cnk:mystery/guide/mainhand/replace with storage cnk:temp meat_guide.item