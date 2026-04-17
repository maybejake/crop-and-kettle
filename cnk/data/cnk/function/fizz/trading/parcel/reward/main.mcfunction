execute if data storage cnk:temp fizz.parcel.item.id run function cnk:fizz/trading/parcel/reward/id_to_loot_table with storage cnk:temp fizz.parcel.item

data modify storage cnk:temp fizz.parcel.item.give_or_spawn set value "give @s"
execute if predicate cnk:inventory_full run data modify storage cnk:temp fizz.parcel.item.give_or_spawn set value "spawn ~ ~ ~"

function cnk:fizz/trading/parcel/reward/loot with storage cnk:temp fizz.parcel.item