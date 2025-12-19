data remove entity @s attack

playsound cnk:item.spirit_sprite.use master @a ~ ~ ~ 1 1

execute on vehicle if entity @s[type=minecraft:allay] at @s run particle minecraft:effect{color:9447257} ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
execute on vehicle on vehicle if entity @s[type=minecraft:allay] at @s run particle minecraft:effect{color:9447257} ~ ~ ~ 0.2 0.2 0.2 0.1 20 force

execute on vehicle if entity @s[type=minecraft:allay] run return run kill @s
execute on vehicle on vehicle if entity @s[type=minecraft:allay] run return run kill @s