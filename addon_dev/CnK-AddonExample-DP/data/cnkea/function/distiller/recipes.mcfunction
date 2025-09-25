# unlike the cooking pot, the distiller does not split up its recipe files based on unique item quantities, there's just way less recipe so it's not necessary
# when added to the distiller tag, recipes in this file will be used for distilling:
# - cnk:tags/function/addons/distiller

# setup is very similar to the cooking pot, with the exception that the quantity of items must be checked first
# cnk comes with 2 lock functions, which basically just handle 2 different crafting times:
# - cnk:distiller/crafting/short_lock - 15 second crafting time
# - cnk:distiller/crafting/lock - 20 minute crafting time (1 minecraft day, for wines)
# you can define new lock functions if you need different crafting times, just take a look at those functions to see their layout

# both the cooking pot and distiller identify unique items by the presence of custom data
# if the custom data component is present, it will no longer be counted as its base vanilla item and its custom data will instead be used as a unique identifier
# you don't need to worry about this too much, beyond just making sure that your custom items have some amount of custom data that makes them unique!

# the cnk:temp distiller.Items storage contains the contents of the distiller, so you can check for any sort of data!

# you MUST define a new liquid_check function for any new liquids, these basically check the basin the distiller will output into, to make sure its empty or has the same liquid in it
execute \
        if score $unique_items cnk.dummy matches 3 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:nether_wart"}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:glistering_melon_slice"}] \
        if function cnkea:distiller/liquid_check/healing_potion \
        if function cnk:distiller/crafting/short_lock \
        run return run function cnkea:distiller/recipes/healing_potion