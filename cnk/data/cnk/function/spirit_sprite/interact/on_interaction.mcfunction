execute on target unless entity @s[tag=cnk.sprite_interaction] run return fail

data remove entity @s attack
execute on vehicle at @s[type=minecraft:allay] run return run function cnk:spirit_sprite/interact/on_display
execute on vehicle on vehicle at @s[type=minecraft:allay] run return run function cnk:spirit_sprite/interact/on_display