execute if score @s cnk.bottle_count matches 3.. run tag @s remove cnk.bottle_attack
execute if score @s cnk.bottle_count matches 3.. run return run scoreboard players reset @s cnk.bottle_count
scoreboard players add @s cnk.bottle_count 1
scoreboard players add @s cnk.attack_count 1

$execute positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^0.5 ^$(strength) {Tags:["cnk.motion_marker"]}
execute positioned 0.0 0.0 0.0 run data modify storage cnk:temp booze.bottle_motion set from entity @n[type=minecraft:marker,tag=cnk.motion_marker] Pos
execute positioned 0.0 0.0 0.0 run kill @n[type=minecraft:marker,tag=cnk.motion_marker]

summon minecraft:lingering_potion ^ ^ ^ {Tags:["cnk.bottle"],Item:{id:"minecraft:lingering_potion",components:{"minecraft:item_model":"cnk:wine","minecraft:potion_contents":{custom_color:11742819}}}, Passengers: \
    [ \
        {id:"minecraft:marker",Tags:["cnk.booze_bottle","cnk.projectile"]} \
    ] \
}
data modify entity @n[tag=cnk.bottle] Motion set from storage cnk:temp booze.bottle_motion