item modify entity @s weapon.mainhand {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}
execute if score $hurt_time cnk.dummy matches 9 run playsound minecraft:block.leaf_litter.break hostile @a ~ ~ ~ 1 1
execute if score $hurt_time cnk.dummy matches 9 run playsound minecraft:block.pumpkin.carve hostile @a ~ ~ ~ 1 1