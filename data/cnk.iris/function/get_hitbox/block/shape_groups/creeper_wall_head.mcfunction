execute if block ~ ~ ~ #cnk.iris:shape_groups/creeper_wall_head[facing=north] run data modify storage cnk.iris:data Shape set value [{min: [0.25, 0.25, 0.5], max: [0.75, 0.75, 1.0]}]
execute if block ~ ~ ~ #cnk.iris:shape_groups/creeper_wall_head[facing=south] run data modify storage cnk.iris:data Shape set value [{min: [0.25, 0.25, 0.0], max: [0.75, 0.75, 0.5]}]
execute if block ~ ~ ~ #cnk.iris:shape_groups/creeper_wall_head[facing=west] run data modify storage cnk.iris:data Shape set value [{min: [0.5, 0.25, 0.25], max: [1.0, 0.75, 0.75]}]
execute if block ~ ~ ~ #cnk.iris:shape_groups/creeper_wall_head[facing=east] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.25, 0.25], max: [0.5, 0.75, 0.75]}]
