execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.0, 0.0], max: [1.0, 0.8125, 1.0]},{min: [0.25, 0.8125, 0.25], max: [0.75, 1.0, 0.75]}]
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=false] run data modify storage cnk.iris:data Shape set value [{min: [0.0, 0.0, 0.0], max: [1.0, 0.8125, 1.0]}]
