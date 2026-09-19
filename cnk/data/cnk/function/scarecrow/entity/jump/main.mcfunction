scoreboard players reset @s cnk.timer

playsound block.wood.step hostile @a ~ ~ ~ 0.5 2
playsound minecraft:block.leaf_litter.step hostile @a ~ ~ ~ 0.5 2

data modify storage cnk:temp pos set value [0,0,0]
execute facing entity @p[distance=2..24,gamemode=!spectator,gamemode=!creative] feet run function cnk:scarecrow/entity/jump/facing_enemy
data modify storage cnk:temp pos[1] set value 0.5

tellraw @a {storage:"cnk:temp",nbt:"pos"}

data modify entity @s Motion set from storage cnk:temp pos