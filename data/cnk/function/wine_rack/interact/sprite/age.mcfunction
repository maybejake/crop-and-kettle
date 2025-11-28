execute store result score $wine_time cnk.dummy run data get storage cnk:temp wine_rack.current_item.components."minecraft:custom_data".cnk.wine.time
scoreboard players operation $wine_time cnk.dummy -= $age_amount cnk.dummy
execute store result storage cnk:temp wine_rack.current_item.components."minecraft:custom_data".cnk.wine.time int 1 run scoreboard players get $wine_time cnk.dummy

execute unless data storage cnk:temp wine_rack.current_item.components."minecraft:custom_data".cnk.wine.spirited run function cnk:wine_rack/interact/sprite/stamp

function cnk:wine_rack/interact/sprite/visual

data modify storage cnk:temp wine_rack.temp_contents append from storage cnk:temp wine_rack.current_item