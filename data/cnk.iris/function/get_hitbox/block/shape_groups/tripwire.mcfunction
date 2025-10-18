execute if block ~ ~ ~ minecraft:tripwire[attached=true] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.0625, 0.0], max: [1.0, 0.15625, 1.0]}]
execute if block ~ ~ ~ minecraft:tripwire[attached=false] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.0, 0.0], max: [1.0, 0.5, 1.0]}]
