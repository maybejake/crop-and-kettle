data remove storage cnk:temp lectern.rotation
execute if block ~ ~ ~ minecraft:lectern[facing=north] run return run data modify storage cnk:temp lectern.rotation set value 180
execute if block ~ ~ ~ minecraft:lectern[facing=east] run return run data modify storage cnk:temp lectern.rotation set value -90
execute if block ~ ~ ~ minecraft:lectern[facing=south] run return run data modify storage cnk:temp lectern.rotation set value 0
execute if block ~ ~ ~ minecraft:lectern[facing=west] run return run data modify storage cnk:temp lectern.rotation set value 90
return fail