data remove entity @s interaction

data remove storage cnk:temp pail.interact_item
data modify storage cnk:temp pail.interact_item set from entity @p[tag=cnk.interact_pail] SelectedItem

execute if data storage cnk:temp pail.interact_item{id:"minecraft:milk_bucket"} on vehicle run return run function cnk:pail/interact/fill/bucket {liquid: "milk", color:16777215}
execute if data storage cnk:temp pail.interact_item{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"milk_bottle"}}}}} on vehicle run return run function cnk:pail/interact/fill/bottle {liquid: "milk",color:16777215}

execute if data storage cnk:temp pail.interact_item{id:"minecraft:water_bucket"} on vehicle run return run function cnk:pail/interact/fill/bucket {liquid: "water", color:4159204}
execute if data storage cnk:temp pail.interact_item{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}} on vehicle run return run function cnk:pail/interact/fill/bottle {liquid: "water", color:4159204}

execute if data storage cnk:temp pail.interact_item{id:"minecraft:bucket"} on vehicle unless function cnk:pail/interact/liquid_check/empty run return run function cnk:pail/interact/empty/bucket
execute if data storage cnk:temp pail.interact_item{id:"minecraft:glass_bottle"} on vehicle unless function cnk:pail/interact/liquid_check/empty run return run function cnk:pail/interact/empty/bottle