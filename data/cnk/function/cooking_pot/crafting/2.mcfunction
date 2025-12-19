execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheeseburger"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fries"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/combo_meal

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"burrito"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chips_and_dip"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/burrito_box

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:apple"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/buttered_apple

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/generic/dye if score $dye_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/candy/main

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"corn_seeds"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/candy_corn

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"popcorn"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"caramel"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/caramel_popcorn

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tortilla_chips"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"salsa"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/chips_and_dip

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"coffee_beans"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/coffee

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"corn"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/cornbread

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fries"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"fried_fish"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/fish_and_chips

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:potato"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/fries

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"caramel"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/golden_oldie

execute \
        if function cnk:cooking_pot/crafting/generic/pork if score $pork_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:honey_bottle"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/honey-glazed_ham

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}] \
        if function cnk:cooking_pot/crafting/generic/pork if score $pork_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/hotdog

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"noodles"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/mac_and_cheese

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:bone_meal"}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/marshmallow

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"candy_cane"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chocolate_bar"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/peppermint_bark

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tortilla"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/quesadilla

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grilled_cheese"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato_soup"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/rainy_day_lunch

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:pumpkin_seeds"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/roasted_seeds

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili_pepper"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/salsa

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/pork if score $pork_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/sausage_roll

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"noodles"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/spaghetti

execute \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/stock

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"vegetable_soup"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:stone"}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/stone_soup

execute \
        if function cnk:cooking_pot/crafting/generic/meat if score $meat_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/fish if score $fish_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/surf_n_turf

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:leaf_litter"}] \
        if function cnk:cooking_pot/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/tea

execute \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/tomato_soup

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"corn"}}}}}] \
        if function cnk:cooking_pot/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/tortilla

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tortilla"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/tortilla_chips

execute \
        if data storage cnk:temp cooking_pot.Items[{id:"minecraft:iron_sword"}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"kebab"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/kebab_sword

execute \
        if function cnk:cooking_pot/crafting/generic/disc if score $disc_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili_pepper"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/music_disc_saute

execute \
        if function cnk:cooking_pot/crafting/generic/disc if score $disc_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"spaghetti"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/music_disc_dinner

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"any_disc"}}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"festive_meal"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/music_disc_greetings

execute \
        if function cnk:cooking_pot/crafting/generic/disc if score $disc_count cnk.dummy matches 1 \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"thankful_meal"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/music_disc_meal

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{chef_hat:true}}}}] \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{cookbook:true}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/foodie_book