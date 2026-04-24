execute store result score $max_index cnk.dummy run data get storage cnk:temp fizz.trading.items
scoreboard players remove $max_index cnk.dummy 1
execute store result storage cnk:temp fizz.trading.max_index int 1 run scoreboard players get $max_index cnk.dummy

function cnk:fizz/trading/pick/random with storage cnk:temp fizz.trading
function cnk:fizz/trading/pick/get_item with storage cnk:temp fizz.trading

# if no loot table, exit without extra processing
execute unless data storage cnk:temp fizz.trading.item.loot_table run return 1

# loot table, preserve count and resolve
data modify storage cnk:temp fizz.trading.count set from storage cnk:temp fizz.trading.item.count
function cnk:loot_table_to_data/main with storage cnk:temp fizz.trading.item
data modify storage cnk:temp fizz.trading.item set from storage cnk:temp loot_table.data
data modify storage cnk:temp fizz.trading.item.count set from storage cnk:temp fizz.trading.count