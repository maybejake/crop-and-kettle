execute \
        if function cnk:cooking_pot/crafting/generic/milk if score $milk_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/cheese

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"coffee_cherries"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/coffee_beans

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/raisins

execute \
        if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}] \
        if function cnk:cooking_pot/crafting/lock \
        run return run function cnk:recipes/cooking_pot/bread