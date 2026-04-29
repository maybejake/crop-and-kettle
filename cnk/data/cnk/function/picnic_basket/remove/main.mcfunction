# play a little sound
playsound minecraft:item.bundle.remove_one block @a ~ ~ ~ 1 0.6

# do a little particle
execute at @s rotated as @s run particle minecraft:dust_plume ^ ^0.3 ^0.25 0 0 0 0 4

# open basket (funeral) (so funny i said it twice)
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}

# swing it
swing @p[tag=cnk.interact_picnic_basket] mainhand

# get last item
data modify storage cnk:temp picnic_basket.item set from entity @s item.components."minecraft:bundle_contents"[-1]
execute unless data storage cnk:temp picnic_basket.item.count run data modify storage cnk:temp picnic_basket.item.count set value 1
execute unless data storage cnk:temp picnic_basket.item.components run data modify storage cnk:temp picnic_basket.item.components set value {}

# remove
execute if entity @p[tag=cnk.interact_picnic_basket,predicate=!cnk:sneaking] run function cnk:picnic_basket/remove/one
execute if entity @p[tag=cnk.interact_picnic_basket,predicate=cnk:sneaking] run function cnk:picnic_basket/remove/stack

# update
function cnk:picnic_basket/interact/update/main

# spawn item
function cnk:picnic_basket/remove/spawn with storage cnk:temp picnic_basket.item