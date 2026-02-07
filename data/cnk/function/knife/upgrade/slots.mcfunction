#main slots
execute if items entity @s hotbar.* minecraft:netherite_sword[minecraft:custom_data~{cnk:{"knife":true,"diamond":true}}] run return run function cnk:knife/upgrade/hotbar
execute if items entity @s inventory.* minecraft:netherite_sword[minecraft:custom_data~{cnk:{"knife":true,"diamond":true}}] run return run function cnk:knife/upgrade/inventory

# extra slots
execute if items entity @s weapon.offhand minecraft:netherite_sword[minecraft:custom_data~{cnk:{"knife":true,"diamond":true}}] run return run data modify storage cnk:temp knife.slot set value "weapon.offhand"
execute if items entity @s player.cursor minecraft:netherite_sword[minecraft:custom_data~{cnk:{"knife":true,"diamond":true}}] run return run data modify storage cnk:temp knife.slot set value "player.cursor"