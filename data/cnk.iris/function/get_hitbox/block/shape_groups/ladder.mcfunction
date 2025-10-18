execute if block ~ ~ ~ minecraft:ladder[facing=north] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.0, 0.8125], max: [1.0, 1.0, 1.0]}]
execute if block ~ ~ ~ minecraft:ladder[facing=south] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.0, 0.0], max: [1.0, 1.0, 0.1875]}]
execute if block ~ ~ ~ minecraft:ladder[facing=west] run data modify storage cnk.iris:data Shape set value [{min: [0.8125, 0.0, 0.0], max: [1.0, 1.0, 1.0]}]
execute if block ~ ~ ~ minecraft:ladder[facing=east] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.0, 0.0], max: [0.1875, 1.0, 1.0]}]
