execute store result score $max_index cnk.dummy run data get storage cnk:temp fizz.trading.items
scoreboard players remove $max_index cnk.dummy 1
execute store result storage cnk:temp fizz.trading.max_index int 1 run scoreboard players get $max_index cnk.dummy

function cnk:fizz/trading/pick/random with storage cnk:temp fizz.trading
function cnk:fizz/trading/pick/get_item with storage cnk:temp fizz.trading