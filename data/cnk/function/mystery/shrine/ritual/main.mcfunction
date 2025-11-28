tag @s add cnk.shrine_marker_ritual
tag @n[type=minecraft:item,tag=cnk.meat_guide,distance=..2] add cnk.meat_guide_ritual

# move item
tp @n[type=minecraft:item,tag=cnk.meat_guide_ritual,distance=..20] ~ ~1 ~
data merge entity @n[type=minecraft:item,tag=cnk.meat_guide_ritual,distance=..20] {NoGravity:1b,PickupDelay:999999,Motion:[0,0,0],Invulnerable:true}
particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.2 0.2 0.2 0 100 force
playsound entity.enderman.teleport neutral @a ~ ~ ~ 1 1
playsound minecraft:entity.warden.dig neutral @a ~ ~ ~ 1 1.5
particle minecraft:portal ~ ~1.25 ~ 0 0 0 2 500 force

# schedule next step
schedule function cnk:mystery/shrine/ritual/rain 100t append