playsound cnk:entity.booze.cork.pop hostile @a ~ ~ ~ 1 1.2
playsound cnk:entity.booze.fizz hostile @a ~ ~ ~ 1 2

particle minecraft:spit ^ ^ ^0.5 0 0 0 0.1 5 force

summon minecraft:item_display ^ ^ ^ {Tags:["cnk.cork","cnk.cork_setup"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.5f,1.5f,1.5],translation:[0.0f,0.56f,0.0f]},Passengers: \
    [ \
        {id:"minecraft:marker",Tags:["cnk.cork","cnk.projectile","cnk.entity"]} \
    ] \
}
tp @n[type=item_display,tag=cnk.cork] ^ ^ ^ ~ ~
data merge entity @n[type=item_display,tag=cnk.cork] {item:{id:"minecraft:cobblestone",components:{"minecraft:item_model":"cnk:booze_cork"}},interpolation_duration:3,teleport_duration:1}
