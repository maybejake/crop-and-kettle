weather thunder
execute at @e[type=minecraft:marker,tag=cnk.shrine_marker_ritual] run playsound minecraft:entity.wither.death neutral @a ~ ~ ~ 1 2
execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.2 0.2 0.2 0 100 force

execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run tellraw @a[distance=..20] {translate:cnk.shrine.1,color:"gray",italic:true}

schedule function cnk:mystery/shrine/ritual/lightning 100t append