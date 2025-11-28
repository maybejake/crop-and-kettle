particle minecraft:item{item:{id:"minecraft:glass"}} ~ ~1.5 ~ 0.2 0.6 0.2 0.2 200
particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
playsound minecraft:block.glass.break hostile @a ~ ~1 ~ 1 0.5
playsound cnk:entity.booze.hurt hostile @a ~ ~1 ~ 1 0.8

summon minecraft:experience_orb ~ ~ ~ {Value:12s}
summon minecraft:experience_orb ~ ~ ~ {Value:12s}
summon minecraft:experience_orb ~ ~ ~ {Value:12s}

kill @s