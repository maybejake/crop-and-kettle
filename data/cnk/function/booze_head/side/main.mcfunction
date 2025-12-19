data modify storage cnk:temp booze_head.rotation set from entity @s Rotation[0]

execute if data storage cnk:temp booze_head{rotation:180.0f} run data modify storage cnk:temp booze_head.direction set value "north"
execute if data storage cnk:temp booze_head{rotation:270.0f} run data modify storage cnk:temp booze_head.direction set value "east"
execute if data storage cnk:temp booze_head{rotation:0.0f} run data modify storage cnk:temp booze_head.direction set value "south"
execute if data storage cnk:temp booze_head{rotation:90.0f} run data modify storage cnk:temp booze_head.direction set value "west"

function cnk:booze_head/side/macro with storage cnk:temp booze_head
return 1