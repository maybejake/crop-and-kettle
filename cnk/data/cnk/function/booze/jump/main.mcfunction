scoreboard players reset @s cnk.timer

playsound block.wood.step hostile @a ~ ~ ~ 0.5 2
playsound minecraft:block.leaf_litter.step hostile @a ~ ~ ~ 0.5 2

execute facing entity @p[distance=6..16,gamemode=!spectator,gamemode=!creative] feet run function cnk:booze/jump/facing_enemy