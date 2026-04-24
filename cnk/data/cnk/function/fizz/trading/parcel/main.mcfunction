# give treasure
data modify storage cnk:temp fizz.parcel.item set value {loot_table:"cnk:entity/fizz/treasure"}
function cnk:fizz/trading/parcel/reward/main

# give special
function cnk:fizz/trading/parcel/special
function cnk:fizz/trading/parcel/reward/main

# give ingredient
data modify storage cnk:temp fizz.trading.items set value []
function cnk:fizz/trading/parcel/ingredients

# addon support for parcel rewards
function #cnk:addons/fizz/ingredients

# if all ingredients unlocked, give another roll on the special loot table
execute store result score $count cnk.dummy run data get storage cnk:temp fizz.trading.items
execute if score $count cnk.dummy matches 0 run return run function cnk:fizz/trading/parcel/special

# pick from list, then reward
function cnk:fizz/trading/parcel/pick
data modify storage cnk:temp fizz.parcel.item set from storage cnk:temp fizz.trading.item
function cnk:fizz/trading/parcel/reward/main