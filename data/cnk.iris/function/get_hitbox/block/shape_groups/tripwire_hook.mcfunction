execute if block ~ ~ ~ minecraft:tripwire_hook[facing=north] run data modify storage cnk.iris:data Shape set value [{min: [0.3125, 0.0, 0.625], max: [0.6875, 0.625, 1.0]}]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=south] run data modify storage cnk.iris:data Shape set value [{min: [0.3125, 0.0, 0.0], max: [0.6875, 0.625, 0.375]}]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=west] run data modify storage cnk.iris:data Shape set value [{min: [0.625, 0.0, 0.3125], max: [1.0, 0.625, 0.6875]}]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=east] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.0, 0.3125], max: [0.375, 0.625, 0.6875]}]
