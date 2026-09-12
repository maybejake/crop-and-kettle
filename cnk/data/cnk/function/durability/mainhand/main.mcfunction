data remove storage cnk:temp durability

# get data
function cnk:loot_table/to_data {loot_table:"cnk:technical/get_slot/mainhand"}

# get damage
function cnk:durability/get_damage

# check if broken
execute if predicate cnk:broken run return run function cnk:durability/mainhand/break

# apply damage
function cnk:durability/mainhand/apply with storage cnk:temp durability