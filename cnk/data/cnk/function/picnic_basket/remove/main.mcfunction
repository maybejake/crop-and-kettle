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

# get count
execute store result score $basket_count cnk.dummy run data get entity @s item.components."minecraft:custom_data".cnk.picnic_basket.count

# remove
execute if entity @p[tag=cnk.interact_picnic_basket,predicate=!cnk:sneaking] run function cnk:picnic_basket/remove/one
execute if entity @p[tag=cnk.interact_picnic_basket,predicate=cnk:sneaking] run function cnk:picnic_basket/remove/stack

# store new count
execute store result entity @s item.components."minecraft:custom_data".cnk.picnic_basket.count int 1 run scoreboard players get $basket_count cnk.dummy

# spawn item
function cnk:picnic_basket/remove/spawn with storage cnk:temp picnic_basket.item

# if new count is 0, remove lore
execute if score $basket_count cnk.dummy matches ..0 run return run data modify entity @s item.components."minecraft:lore" set value [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}]

# update lore
function cnk:picnic_basket/interact/lore with entity @s item.components."minecraft:custom_data".cnk.picnic_basket