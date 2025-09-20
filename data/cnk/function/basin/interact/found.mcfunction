data remove entity @s interaction

execute if items entity @p[tag=cnk.interact_basin] weapon.mainhand minecraft:glass_bottle on vehicle if score @s cnk.level matches 1.. at @s run return run function cnk:basin/empty/main