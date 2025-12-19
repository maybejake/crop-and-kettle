execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=north] run data modify storage cnk.iris:data Shape set value [{min: [0.1875, 0.25, 0.5], max: [0.8125, 0.75, 1.0]}]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=south] run data modify storage cnk.iris:data Shape set value [{min: [0.1875, 0.25, 0.0], max: [0.8125, 0.75, 0.5]}]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=west] run data modify storage cnk.iris:data Shape set value [{min: [0.5, 0.25, 0.1875], max: [1.0, 0.75, 0.8125]}]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=east] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.25, 0.1875], max: [0.5, 0.75, 0.8125]}]
