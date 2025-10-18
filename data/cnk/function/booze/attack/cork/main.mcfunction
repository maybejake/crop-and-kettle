summon minecraft:item_display ^ ^ ^ {Tags:["cnk.cork","cnk.cork_setup","cnk.booze_body"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
tp @n[type=item_display,tag=cnk.cork] ^ ^ ^ ~ ~
data merge entity @n[type=item_display,tag=cnk.cork] {item:{id:"minecraft:sponge"},interpolation_duration:3,teleport_duration:1}