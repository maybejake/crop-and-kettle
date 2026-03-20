stopsound @a[distance=..6] block minecraft:block.fire.ambient
stopsound @a[distance=..6] block cnk:block.cooking_pot.cooking
scoreboard players set @s cnk.cook_time 0
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}