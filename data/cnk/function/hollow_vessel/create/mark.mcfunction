execute as @p[tag=cnk.interact_hollow_vessel] run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}

tag @p[tag=cnk.interact_hollow_vessel] add cnk.doughboy_advancement

execute on vehicle run tag @s add cnk.hollow_vessel_filled
execute on vehicle run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}