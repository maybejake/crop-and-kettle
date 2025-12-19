execute \
        if score $unique_items cnk.dummy matches 2 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}] \
        if function cnk:distiller/crafting/liquid_check/grape_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/grape_wine

execute \
        if score $unique_items cnk.dummy matches 2 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:chorus_fruit"}] \
        if function cnk:distiller/crafting/liquid_check/chorus_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/chorus_wine

execute \
        if score $unique_items cnk.dummy matches 2 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:sweet_berries"}] \
        if function cnk:distiller/crafting/liquid_check/sweet_berry_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/sweet_berry_wine

execute \
        if score $unique_items cnk.dummy matches 2 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:glow_berries"}] \
        if function cnk:distiller/crafting/liquid_check/glow_berry_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/glow_berry_wine

execute \
        if score $unique_items cnk.dummy matches 3 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:distiller/crafting/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:gunpowder"}] \
        if function cnk:distiller/crafting/liquid_check/creeping_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/creeping_wine

execute \
        if score $unique_items cnk.dummy matches 2 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:wheat"}] \
        if function cnk:distiller/crafting/liquid_check/beer \
        if function cnk:distiller/crafting/short_lock \
        run return run function cnk:recipes/distiller/beer

execute \
        if score $unique_items cnk.dummy matches 3 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:wheat"}] \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"ginger"}}}}}] \
        if function cnk:distiller/crafting/liquid_check/ginger_beer \
        if function cnk:distiller/crafting/short_lock \
        run return run function cnk:recipes/distiller/ginger_beer

execute \
        if score $unique_items cnk.dummy matches 3 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:distiller/crafting/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:blaze_powder"}] \
        if function cnk:distiller/crafting/liquid_check/blazing_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/blazing_wine

execute \
        if score $unique_items cnk.dummy matches 2 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:golden_apple"}] \
        if function cnk:distiller/crafting/liquid_check/gleaming_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/gleaming_wine

execute \
        if score $unique_items cnk.dummy matches 4 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:distiller/crafting/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:feather"}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:wind_charge"}] \
        if function cnk:distiller/crafting/liquid_check/breezing_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/breezing_wine

execute \
        if score $unique_items cnk.dummy matches 4 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:distiller/crafting/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:emerald_block"}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:totem_of_undying"}] \
        if function cnk:distiller/crafting/liquid_check/heroic_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/heroic_wine

execute \
        if score $unique_items cnk.dummy matches 4 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:distiller/crafting/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:pufferfish"}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:prismarine_shard"}] \
        if function cnk:distiller/crafting/liquid_check/diving_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/diving_wine

execute \
        if score $unique_items cnk.dummy matches 4 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:distiller/crafting/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:amethyst_shard"}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:golden_carrot"}] \
        if function cnk:distiller/crafting/liquid_check/prospecting_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/prospecting_wine

execute \
        if score $unique_items cnk.dummy matches 4 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:distiller/crafting/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:rabbit_foot"}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:gold_block"}] \
        if function cnk:distiller/crafting/liquid_check/blessing_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/blessing_wine

execute \
        if score $unique_items cnk.dummy matches 3 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:gold_nugget"}] \
        if function cnk:distiller/crafting/liquid_check/fine_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/fine_wine

execute \
        if score $unique_items cnk.dummy matches 3 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cinnamon"}}}}}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:apple"}] \
        if function cnk:distiller/crafting/liquid_check/apple_cider \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/apple_cider

execute \
        if score $unique_items cnk.dummy matches 5 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cinnamon"}}}}}] \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:sweet_berries"}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:honey_bottle"}] \
        if function cnk:distiller/crafting/liquid_check/mulled_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/mulled_wine

execute \
        if score $unique_items cnk.dummy matches 2 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:ominous_bottle"}] \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}] \
        if function cnk:distiller/crafting/liquid_check/booze_wine \
        if function cnk:distiller/crafting/lock \
        run return run function cnk:recipes/distiller/booze_wine