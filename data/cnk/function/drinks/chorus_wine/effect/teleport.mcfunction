particle minecraft:portal ~ ~1 ~ 0.35 0.6 0.35 0 100 force
playsound entity.player.teleport neutral @a ~ ~ ~ 1 1

$spreadplayers ~ ~ $(min_distance) $(max_distance) false @s
execute at @s run playsound entity.player.teleport neutral @a ~ ~ ~ 1 1