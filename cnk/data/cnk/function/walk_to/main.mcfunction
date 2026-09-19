execute summon minecraft:marker run function cnk:walk_to/get_position

data modify storage cnk:temp walk_to.list set value [I;0,0,0]
data modify storage cnk:temp walk_to.list[0] set from storage cnk:temp walk_to.pos[0]
data modify storage cnk:temp walk_to.list[1] set from storage cnk:temp walk_to.pos[1]
data modify storage cnk:temp walk_to.list[2] set from storage cnk:temp walk_to.pos[2]

execute if dimension minecraft:overworld run data modify storage cnk:temp walk_to.dimension set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage cnk:temp walk_to.dimension set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage cnk:temp walk_to.dimension set value "minecraft:the_end"

data modify storage cnk:temp memories."minecraft:potential_job_site".value.pos set from storage cnk:temp walk_to.list
data modify storage cnk:temp memories."minecraft:potential_job_site".value.dimension set from storage cnk:temp walk_to.dimension
data modify storage cnk:temp memories."minecraft:home".value.pos set from storage cnk:temp walk_to.list
data modify storage cnk:temp memories."minecraft:home".value.dimension set from storage cnk:temp walk_to.dimension
data modify storage cnk:temp memories."minecraft:job_site".value.pos set from storage cnk:temp walk_to.list
data modify storage cnk:temp memories."minecraft:job_site".value.dimension set from storage cnk:temp walk_to.dimension