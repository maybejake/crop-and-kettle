execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:apple"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/apple_pie

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fried_chicken"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili_pepper"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/buffalo_wings

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tea"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/builders_tea

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/caramel

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:apple"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"caramel"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:stick"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/caramel_apple

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/cereal

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fried_chicken"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sea_pickle"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/chicken_sandwich

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili_pepper"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/beef if score $beef_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/chili

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"hotdog"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/chili_cheese_dog

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:cocoa_beans"}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/chocolate_bar

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:potato"}] \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/pork if score $pork_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/classic_breakfast

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rice"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/egg if score $egg_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/vegetable if score $vegetable_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/egg_fried_rice

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/chicken if score $chicken_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/fried_chicken

execute \
        if function cnk:cooking_pot/crafting/generic/fish if score $fish_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/fried_fish

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/glazed_donut

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/grilled_cheese

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:pumpkin"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/halloween_donut

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:honey_bottle"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/honey_bun

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chocolate_bar"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cinnamon"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/hot_chocolate

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sweet_berries"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/jam_donut

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:slime_ball"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sweet_berries"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/jelly

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:stick"}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/vegetable if score $vegetable_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/kebab

execute \
        if function cnk:cooking_pot/crafting/generic/beef if score $beef_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/lasagna

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:carrot"}] \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/lettuce_wrap

execute \
        if function cnk:cooking_pot/crafting/generic/mushroom if score $mushroom_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rice"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"stock"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/mushroom_risotto

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/pizza

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"corn_seeds"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/popcorn

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fries"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"stock"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/poutine

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"steak_and_ale_pie"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:potato"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:carrot"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/pub_meal

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:cookie"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"raisins"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/raisin_cookie

execute \
        if function cnk:cooking_pot/crafting/generic/fish if score $fish_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rice"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:dried_kelp"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/sushi

execute \
        if function cnk:cooking_pot/crafting/generic/vegetable if score $vegetable_count cnk.dummy matches 3 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/vegetable_soup

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"stock"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:wheat"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/demi-glace

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"stock"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:potato"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/fondant_potatoes

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/mushroom if score $mushroom_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:beef"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/beef_wellington