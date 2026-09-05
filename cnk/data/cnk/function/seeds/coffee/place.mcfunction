execute unless block ~ ~ ~ #cnk:air run return fail
execute unless block ~ ~1 ~ #cnk:air run return fail

setblock ~ ~ ~ minecraft:pumpkin_stem[age=0] replace
playsound minecraft:item.crop.plant block @a ~ ~ ~ 1 1

# summon
execute align xyz run summon item_display ~0.5 ~ ~0.5 {item_display:"ground",Tags:["cnk.coffee_crop","cnk.crop","cnk.ticking_crop","cnk.base_pumpkin","smithed.block","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_name":{translate:"block.cnk.coffee_crop",fallback:"Coffee Crop"},"minecraft:custom_data":{"$jade:stack":{"id":"cnk:coffee_crop"}},"minecraft:item_model":"cnk:coffee_crop"}},Passengers: \
    [ \
        {id:"minecraft:interaction",Tags:["cnk.crop_interaction","smithed.block","smithed.entity","smithed.strict"],width:1.001} \
    ] \
}

# setup data
execute align xyz positioned ~0.5 ~ ~0.5 as @n[type=minecraft:item_display,tag=cnk.coffee_crop,distance=..0.1] run function cnk:seeds/coffee/setup