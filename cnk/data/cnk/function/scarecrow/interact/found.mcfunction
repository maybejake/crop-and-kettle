data remove entity @s interaction

execute if items entity @p[tag=cnk.interact_scarecrow] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{cnk:{"hay_brain":true}}] on vehicle rotated as @s run function cnk:scarecrow/transform