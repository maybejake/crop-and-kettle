function cnk:booze/summon

particle minecraft:effect{color:9447257} ~ ~0.9 ~ 0.5 0.5 0.5 0.5 100 force
particle minecraft:poof ~ ~0.9 ~ 0.1 0.1 0.1 0.3 100

playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.5 1
playsound cnk:entity.booze.teleport block @a ~ ~ ~ 1 1