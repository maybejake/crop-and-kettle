execute unless block ~ ~ ~ #cnk:air run return fail
execute unless block ~ ~1 ~ #cnk:air run return fail

setblock ~ ~ ~ minecraft:pumpkin_stem[age=0] replace
playsound minecraft:item.crop.plant block @a ~ ~ ~ 1 1

execute align xyz run summon item_display ~0.5 ~ ~0.5 {item_display:"ground",Tags:["cnk.chili_pepper_crop","cnk.crop","cnk.ticking_crop","cnk.base_pumpkin","smithed.block","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"cnk:chili_pepper_crop_0"}},Passengers: \
    [ \
        {id:"minecraft:interaction",Tags:["cnk.crop_interaction","smithed.block","smithed.entity","smithed.strict"],height:0.5625,width:1.001,response:true} \
    ] \
}

execute align xyz positioned ~0.5 ~ ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.chili_pepper_crop,distance=..0.1] cnk.max_age 8
execute align xyz positioned ~0.5 ~ ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.chili_pepper_crop,distance=..0.1] cnk.age 0
execute align xyz positioned ~0.5 ~ ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.chili_pepper_crop,distance=..0.1] cnk.crop_version 1

execute if entity @s[gamemode=!creative] run function cnk:seeds/remove_item with storage cnk:temp seeds