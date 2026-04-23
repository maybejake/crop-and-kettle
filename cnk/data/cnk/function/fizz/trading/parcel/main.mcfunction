# particle
execute at @s anchored eyes run particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"cnk:lily_pad_parcel"}}} ^ ^-0.35 ^0.65 0.1 0.1 0.1 0.06 10 force

# give treasure
data modify storage cnk:temp fizz.parcel.item set value {loot_table:"cnk:entity/fizz/treasure"}
function cnk:fizz/trading/parcel/reward/main

# give special
data modify storage cnk:temp fizz.parcel.item set value {loot_table:"cnk:entity/fizz/special"}
function cnk:fizz/trading/parcel/reward/main

# give ingredient
data modify storage cnk:temp fizz.trading.items set value []
function cnk:fizz/trading/parcel/ingredients

# addon support for parcel rewards
function #cnk:addons/fizz/ingredients

# if all ingredients unlocked, give another roll on the special loot table
execute store result score $count cnk.dummy run data get storage cnk:temp fizz.trading.items
execute if score $count cnk.dummy matches 0 run return run function cnk:fizz/trading/parcel/reward/main

# pick from list, then reward
function cnk:fizz/trading/parcel/pick
data modify storage cnk:temp fizz.parcel.item set from storage cnk:temp fizz.trading.item
function cnk:fizz/trading/parcel/reward/main