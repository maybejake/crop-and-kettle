data remove entity @s interaction

execute as @p[tag=cnk.interact_gift,distance=..20] run function cnk:swing/mainhand
execute on vehicle at @s run function cnk:gift/interact/open