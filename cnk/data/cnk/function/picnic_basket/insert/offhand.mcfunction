execute if items entity @s weapon.offhand *[minecraft:custom_data~{}] unless items entity @s weapon.offhand *[minecraft:custom_data~{cnk:{ingredient:{}}}] run return fail

# swing it
swing @s offhand

data modify storage cnk:temp picnic_basket.slot set value "offhand"
return run data modify storage cnk:temp picnic_basket.item set from entity @s equipment.offhand