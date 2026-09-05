item modify entity @p[tag=cnk.interact_hollow_vessel,distance=..20,gamemode=!creative] weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}
swing @p[tag=cnk.interact_hollow_vessel,distance=..20] mainhand

tag @p[tag=cnk.interact_hollow_vessel,distance=..20] add cnk.doughboy_advancement

execute on vehicle run tag @s add cnk.hollow_vessel_filled
execute on vehicle run item modify entity @s contents {"type":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}