advancement revoke @s only cnk:pink_parfait

execute at @s run playsound entity.firework_rocket.large_blast neutral @s ~ ~ ~ 1 1
execute at @s run playsound entity.firework_rocket.twinkle neutral @s ~ ~ ~ 1 1
execute at @s run playsound entity.firework_rocket.launch neutral @s ~ ~ ~ 1 1

execute at @s run particle minecraft:item{item:{id:"minecraft:pink_dye",components:{"minecraft:item_model":"cnk:rainbow"}}} ~ ~1 ~ 0.2 0.5 0.2 0.3 100 force
execute at @s run particle minecraft:item{item:{id:"minecraft:pink_dye",components:{"minecraft:item_model":"cnk:rainbow"}}} ~ ~1 ~ 0.2 0.5 0.2 0.2 100 force
execute at @s run particle minecraft:firework ~ ~1 ~ 0.4 0.5 0.4 0.2 50 force
#execute at @s run particle minecraft:item{item:{id:"minecraft:pink_concrete_powder"}} ~ ~1 ~ 0.2 0.4 0.2 0.3 100 force
#execute at @s run particle minecraft:item{item:{id:"minecraft:pink_dye"}} ~ ~1 ~ 0.2 0.4 0.2 0.3 100 force
#execute at @s run particle minecraft:dust{color:[1, 0.698, 0.773], scale:1} ~ ~1 ~ 0.4 0.4 0.4 0 100 force