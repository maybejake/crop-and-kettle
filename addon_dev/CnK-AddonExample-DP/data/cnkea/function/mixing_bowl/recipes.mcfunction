# this handles any extra recipes for the mixing bowl!
# when added to the mixing bowl tag, recipes in this file will be used for mixing bowl crafting:
# - cnk:tags/function/addons/mixing_bowl

# very similar to the cooking pot and distiller
# check the item count, check the items, then lock (ensures the mixing bowl is not already mixing)
# callbacks are used here instead of direct function calls because of the crafting delay, just set mix_callback to whatever your recipe's function is
execute if score $mixing_bowl_item_count cnk.dummy matches 2 \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:red_dye"}] \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:blue_dye"}] \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnkea:mixing_bowl/recipes/purple_dye"

execute if score $mixing_bowl_item_count cnk.dummy matches 2 \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:black_concrete_power"}] \
        if function cnk:mixing_bowl/mix/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnkea:mixing_bowl/recipes/black_concrete"