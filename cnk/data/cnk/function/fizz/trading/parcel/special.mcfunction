execute store result score $chance cnk.dummy run random value 1..100
execute if score $chance cnk.dummy matches ..85 run return fail

data modify storage cnk:temp fizz.trading.items set value []
execute unless entity @s[advancements={cnk:fizz_special/fizz_fez=true}] run data modify storage cnk:temp fizz.trading.items append value {loot_table:"cnk:other/fizz_fez"}
execute unless entity @s[advancements={cnk:fizz_special/fizz_whistle=true}] run data modify storage cnk:temp fizz.trading.items append value {loot_table:"cnk:other/fizz_whistle"}
execute unless entity @s[advancements={cnk:fizz_special/fizz_oven=true}] run data modify storage cnk:temp fizz.trading.items append value {loot_table:"cnk:tools/fizz_oven"}
execute unless entity @s[advancements={cnk:fizz_special/hollow_vessel=true}] run data modify storage cnk:temp fizz.trading.items append value {loot_table:"cnk:zzz_secret/hollow_vessel"}

# if the player has all rewards, give even chance for all of them
execute store result score $count cnk.dummy run data get storage cnk:temp fizz.trading.items
execute if score $count cnk.dummy matches 0 run return run data modify storage cnk:temp fizz.parcel.item set value {loot_table:"cnk:entity/fizz/special"}

function cnk:fizz/trading/parcel/pick
data modify storage cnk:temp fizz.parcel.item set from storage cnk:temp fizz.trading.item