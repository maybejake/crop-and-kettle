# check for non-food custom items
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{},minecraft:food={can_always_eat:true,nutrition:0,saturation:0}] run return fail

data modify storage cnk:temp picnic_basket.slot set value "offhand"
return run data modify storage cnk:temp picnic_basket.item set from entity @s equipment.offhand