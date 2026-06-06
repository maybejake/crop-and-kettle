data remove entity @s interaction

execute if items entity @p[tag=cnk.interact_scarecrow,distance=..20] weapon.mainhand *[minecraft:custom_data~{cnk:{"hay_brain":true}}] on vehicle rotated as @s run function cnk:scarecrow/transform