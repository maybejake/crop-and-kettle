# check stack size
execute store result score $last_item_count cnk.dummy run data get entity @s item.components."minecraft:bundle_contents"[-1].count
execute unless score $last_item_count cnk.dummy matches 1.. run scoreboard players set $last_item_count cnk.dummy 1

execute store result score $stack_size cnk.dummy run data get entity @s item.components."minecraft:bundle_contents"[-1]."components"."minecraft:max_stack_size"
execute unless score $stack_size cnk.dummy matches 1.. run scoreboard players set $stack_size cnk.dummy 64

# last item stack full, make new stack
execute if score $last_item_count cnk.dummy >= $stack_size cnk.dummy run return run function cnk:picnic_basket/insert/add/new

# calculate new count with item inserted
execute store result score $item_count cnk.dummy run data get storage cnk:temp picnic_basket.item.count
scoreboard players operation $temp_item_count cnk.dummy = $last_item_count cnk.dummy
scoreboard players operation $temp_item_count cnk.dummy += $item_count cnk.dummy

# can fit whole stack, merge it
execute if score $temp_item_count cnk.dummy <= $stack_size cnk.dummy store result entity @s item.components."minecraft:bundle_contents"[-1].count int 1 run return run scoreboard players get $temp_item_count cnk.dummy

# split the stack, set the previous item to max stack
execute store result entity @s item.components."minecraft:bundle_contents"[-1].count int 1 run scoreboard players get $stack_size cnk.dummy

# create new stack with remainder
execute store result storage cnk:temp picnic_basket.item.count int 1 run scoreboard players operation $temp_item_count cnk.dummy -= $stack_size cnk.dummy
function cnk:picnic_basket/insert/add/new