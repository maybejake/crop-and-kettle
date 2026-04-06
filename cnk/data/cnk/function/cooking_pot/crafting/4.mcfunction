execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"mushroom_risotto"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/arancini

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fried_chicken"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rice"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"sushi"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/vegetable if score $vegetable_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/bento_box

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rice"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:carrot"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/bibimbap

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if function cnk:cooking_pot/crafting/generic/pork if score $pork_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/blt

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/pork if score $pork_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/breakfast_bagel

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tortilla"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rice"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/burrito

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rice"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/chicken if score $chicken_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili_pepper"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/butter_chicken

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/chicken if score $chicken_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/chicken_fillet_roll

execute \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/cupcake

execute \
        if function cnk:cooking_pot/crafting/generic/dye if score $dye_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/festive_cookie/main

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"raisins"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/fruitcake

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/fruit if score $fruit_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/grazing_board

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/mutton if score $mutton_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/gyro

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if function cnk:cooking_pot/crafting/generic/beef if score $beef_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/hamburger

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"spaghetti"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/italian_dinner

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:pumpkin"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cinnamon"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/pumpkin_roll

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:beetroot"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:carrot"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:pumpkin"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/ratatouille

execute \
        if function cnk:cooking_pot/crafting/generic/chicken if score $chicken_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:potato"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:carrot"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"stock"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/roast_dinner

execute \
        if function cnk:cooking_pot/crafting/generic/mutton if score $mutton_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:carrot"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:potato"}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/shepherds_pie

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"beer"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/beef if score $beef_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"stock"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/steak_and_ale_pie

execute \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/vegetable if score $vegetable_count cnk.dummy matches 3 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/stew

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cornbread"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"mac_and_cheese"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:potato"}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/thankful_meal

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:tnt"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:apple"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/psys_explosive_apple_pie