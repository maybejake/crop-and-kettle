execute if entity @s[tag=cnk.mixing] run return fail
execute as @p[tag=cnk.interact_mixing_bowl,distance=..20] run function cnk:swing/mainhand
return run tag @s add cnk.mixing