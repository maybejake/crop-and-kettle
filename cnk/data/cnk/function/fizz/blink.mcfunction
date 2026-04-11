execute store result score $chance cnk.dummy run random value 1..100

# blink both
execute if score $chance cnk.dummy matches 1..6 run return run item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":1,"values":[true, true]}}

# blink one
execute if score $chance cnk.dummy matches 7..8 run return run item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":1,"values":[true]}}
execute if score $chance cnk.dummy matches 9..10 run return run item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":2,"values":[true]}}