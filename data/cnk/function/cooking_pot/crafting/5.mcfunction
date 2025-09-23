execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:carrot"}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/carrot_cake

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if function cnk:cooking_pot/crafting/generic/beef if score $beef_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/cheeseburger

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/cheesecake

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:cocoa_beans"}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/chocolate_cake

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:chorus_fruit"}] \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/chorus_cupcake

execute \
        if function cnk:cooking_pot/crafting/generic/pork if score $pork_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:potato"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/full_irish

execute \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili_pepper"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:blaze_rod"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/infernal_cupcake

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tortilla_chips"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"salsa"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/nachos

execute \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:glowstone"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/promised_cupcake

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:red_dye"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:green_dye"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:blue_dye"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:yellow_dye"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:cookie"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/proud_cookie

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"noodles"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"stock"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:dried_kelp"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/ramen

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tortilla"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/taco

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"coffee"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:cocoa_beans"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/tiramisu

execute \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:grass_block"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/worldly_cupcake

execute \
        if function cnk:cooking_pot/crafting/generic/chicken if score $chicken_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:shulker_shell"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/jakes_uplifting_lunch

execute \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 3 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:spider_eye"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bone"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/mystery_meat

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"beef_wellington"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fondant_potatoes"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"vegetable_puree"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"demi-glace"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fine_wine"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/foodie_feast