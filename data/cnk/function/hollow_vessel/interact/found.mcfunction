data remove entity @s interaction
execute on vehicle if entity @s[tag=cnk.hollow_vessel_filled] run return fail
execute if items entity @p[tag=cnk.interact_hollow_vessel] weapon.mainhand *[minecraft:custom_data~{cnk:{ingredient:{type:"dough"}}}] run function cnk:hollow_vessel/create/mark