execute if entity @s[tag=cnk.projectile] at @s run return run function cnk:projectiles

execute if entity @s[tag=cnk.scarecrow_enemy] at @s run return run function cnk:scarecrow/entity/tick
execute if entity @s[tag=cnk.booze] at @s run return run function cnk:booze/tick
execute if entity @s[tag=cnk.spirit_sprite] at @s run return run function cnk:spirit_sprite/tick
execute if entity @s[tag=cnk.wreath] on vehicle at @s run return run function cnk:wreath/door
