execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run summon minecraft:lightning_bolt ~ ~0.25 ~
execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run playsound minecraft:entity.warden.dig neutral @a ~ ~ ~ 1 1.8
execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run playsound cnk:ambient.shrine.chimes neutral @a ~ ~ ~ 1 1
execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run particle minecraft:soul ~ ~0.2 ~ 0 0 0 0.2 100 force
execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run particle minecraft:large_smoke ~ ~0.2 ~ 0.3 0.3 0.3 0 50 force

schedule function cnk:mystery/shrine/ritual/stop_fire 5t append
schedule function cnk:mystery/shrine/ritual/the_exchange 80t append