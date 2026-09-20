execute if score @s cnk.bottle_count matches 3.. run tag @s remove cnk.bottle_attack
execute if score @s cnk.bottle_count matches 3.. run return run scoreboard players reset @s cnk.bottle_count
scoreboard players add @s cnk.bottle_count 1

scoreboard players set $hit cnk.dummy 0
scoreboard players set $distance cnk.dummy 0
scoreboard players set $max_distance cnk.dummy 48
execute at @s anchored eyes positioned ^ ^ ^ anchored feet facing entity @p[distance=..16,gamemode=!spectator,gamemode=!creative] eyes run function cnk:booze/attack/bottle/ray

execute if score $hit cnk.dummy matches 0 run return fail

execute store result storage cnk:temp booze.strength double 0.029 run scoreboard players get $distance cnk.dummy
function cnk:booze/attack/bottle/macro with storage cnk:temp booze
data modify storage cnk:temp booze.bottle_motion set from storage cnk:temp pos

playsound minecraft:entity.splash_potion.throw hostile @a ~ ~ ~ 1 0.6
summon minecraft:lingering_potion ^ ^ ^ {Tags:["cnk.bottle","cnk.iris.ignore"],Item:{id:"minecraft:lingering_potion",components:{"minecraft:item_model":"cnk:wine","minecraft:potion_contents":{custom_color:11742819}}}, Passengers: \
    [ \
        {id:"minecraft:marker",Tags:["cnk.booze_bottle","cnk.projectile","cnk.entity","cnk.iris.ignore"]} \
    ] \
}
execute positioned ^ ^ ^ run data modify entity @n[type=minecraft:lingering_potion,tag=cnk.bottle,distance=..0.1] Motion set from storage cnk:temp booze.bottle_motion