execute if score $mixing_bowl_item_count cnk.dummy matches 4 \
        if function cnk:mixing_bowl/mix/generic/ice if score $ice_count cnk.dummy matches 1 \
        if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"coffee"}}}}}] \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
        if function cnk:mixing_bowl/mix/generic/milk if score $milk_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/iced_coffee"

execute if score $mixing_bowl_item_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/generic/milk if score $milk_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/butter"

execute if score $mixing_bowl_item_count cnk.dummy matches 2 \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:glass_bottle"}] \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:sunflower"}] \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/cooking_oil"

execute if score $mixing_bowl_item_count cnk.dummy matches 2 \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:wheat"}] \
        if function cnk:mixing_bowl/mix/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/dough"

execute if score $mixing_bowl_item_count cnk.dummy matches 2 \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:wheat"}] \
        if function cnk:mixing_bowl/mix/generic/egg if score $egg_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/egg_dough"

execute if score $mixing_bowl_item_count cnk.dummy matches 3 \
        if function cnk:mixing_bowl/mix/generic/ice if score $ice_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:sugar"}] \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/ice_cream"

execute if score $mixing_bowl_item_count cnk.dummy matches 4 \
        if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"ice_cream"}}}}}] \
        if function cnk:mixing_bowl/mix/generic/ice if score $ice_count cnk.dummy matches 1 \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:sweet_berries"}] \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/averys_freezer_burnt_sundae"

execute if score $mixing_bowl_item_count cnk.dummy matches 3 \
        if function cnk:mixing_bowl/mix/generic/vegetable if score $vegetable_count cnk.dummy matches 3 \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/vegetable_puree"

execute if score $mixing_bowl_item_count cnk.dummy matches 4 \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:sweet_berries"}] \
        if function cnk:mixing_bowl/mix/generic/ice_cream if score $ice_cream_count cnk.dummy matches 2 \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/sundae"

execute if score $mixing_bowl_item_count cnk.dummy matches 3 \
        if function cnk:mixing_bowl/mix/generic/cookie if score $cookie_count cnk.dummy matches 2 \
        if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"ice_cream"}}}}}] \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/frozen_delight"

execute if score $mixing_bowl_item_count cnk.dummy matches 4 \
        if function cnk:mixing_bowl/mix/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:pink_dye"}] \
        if function cnk:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/floofys_pink_parfait"