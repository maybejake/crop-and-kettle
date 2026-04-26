execute if items entity @s weapon.mainhand *[minecraft:custom_data] unless items entity @s weapon.mainhand *[minecraft:custom_data~{cnk:{ingredient:{}}}] run return fail

# swing it
swing @s mainhand

data modify storage cnk:temp picnic_basket.slot set value "mainhand"
return run data modify storage cnk:temp picnic_basket.item set from entity @s SelectedItem