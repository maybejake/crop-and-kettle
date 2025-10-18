playsound cnk:block.candy_bowl.laugh block @a ~ ~ ~ 1 0.8
summon item_display ~ ~ ~ {Tags:["cnk.pumpkin_missile","cnk.block","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.00f,1.00f,1.00f],translation:[0.0f,0.25f,0.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"cnk:pumpkin_missile"}},Rotation:[0.0,-90.0],interpolation_duration:2,teleport_duration:2,Passengers: \
    [ \
        {id:"minecraft:marker",Tags:["cnk.pumpkin_missile","cnk.projectile"]}, \
        {id:"minecraft:interaction",Tags:["cnk.pumpkin_missile","cnk.projectile"],width:0.5,height:0.25}, \
        {id:"minecraft:interaction",Tags:["cnk.pumpkin_missile","cnk.projectile"],width:0.5,height:-0.25} \
    ] \
}