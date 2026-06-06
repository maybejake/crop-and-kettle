$execute align xyz run summon item_display ~0.5 ~ ~0.5 {item_display:"ground",Tags:["cnk.corn_crop","cnk.crop","cnk.ticking_crop","cnk.base_wheat","smithed.block","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_name":{translate:"block.cnk.corn_crops",fallback:"Corn Crops"},"minecraft:custom_data":{"$jade:stack":{"id":"cnk:corn_crops"}},"minecraft:item_model":"cnk:corn_crop_0"}},Passengers: \
    [ \
        {id:"minecraft:interaction",Tags:["cnk.crop_interaction","smithed.block","smithed.entity","smithed.strict"],height:0.5,width:1.001,response:$(response)} \
    ] \
}