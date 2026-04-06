execute store result score $count cnk.dummy run data get entity @s equipment.chest.components."minecraft:custom_model_data".floats[0]

execute if score $count cnk.dummy matches 1 if items entity @p[tag=cnk.doughboy_interact] weapon.mainhand minecraft:wheat run function cnk:doughboy/interact/feed
execute if score $count cnk.dummy matches 3 run function cnk:doughboy/interact/harvest