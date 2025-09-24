kill @s
execute unless block ~ ~-1 ~ minecraft:dirt run return run function cnk:seeds/rice/summon {count:1}
execute unless block ~ ~ ~ minecraft:water run return run function cnk:seeds/rice/summon {count:1}
execute unless block ~ ~1 ~ #minecraft:air unless block ~ ~1 ~ minecraft:light run return run function cnk:seeds/rice/summon {count:1}

setblock ~ ~ ~ minecraft:mangrove_propagule[stage=0,waterlogged=true] replace
setblock ~ ~1 ~ minecraft:light[level=0] replace
playsound minecraft:item.crop.plant block @a ~ ~ ~ 1 1

execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item_display:"ground",Tags:["cnk.rice_crop","cnk.crop","cnk.ticking_crop","cnk.base_propagule","smithed.block","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"cnk:rice_crop_0"}}}
execute align xyz run summon minecraft:interaction ~0.5 ~-0.0625 ~0.5 {Tags:["cnk.crop_interaction","smithed.block","smithed.entity","smithed.strict"],height:1.125,width:1.001,response:true}

execute align xyz positioned ~0.5 ~0.5 ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.rice_crop,distance=..0.1] cnk.max_age 5
execute align xyz positioned ~0.5 ~0.5 ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.rice_crop,distance=..0.1] cnk.age 0