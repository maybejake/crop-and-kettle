kill @s
execute unless block ~ ~-1 ~ minecraft:farmland run return run function cnk:seeds/grape/summon {count:1}
execute unless block ~ ~ ~ #minecraft:air run return run function cnk:seeds/grape/summon {count:1}
execute unless block ~ ~1 ~ #minecraft:air run return run function cnk:seeds/grape/summon {count:1}

setblock ~ ~ ~ minecraft:wheat[age=0] replace
playsound minecraft:item.crop.plant block @a ~ ~ ~ 1 1

execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item_display:"ground",Tags:["cnk.grape_crop","cnk.crop","cnk.ticking_crop","cnk.base_wheat","smithed.block","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"cnk:grape_crop_0"}}}
execute align xyz run summon minecraft:interaction ~0.5 ~-0.0625 ~0.5 {Tags:["cnk.crop_interaction","smithed.block","smithed.entity","smithed.strict"],height:2,width:1.001,response:true}

execute align xyz positioned ~0.5 ~0.5 ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.grape_crop,distance=..0.1] cnk.max_age 7
execute align xyz positioned ~0.5 ~0.5 ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.grape_crop,distance=..0.1] cnk.age 0