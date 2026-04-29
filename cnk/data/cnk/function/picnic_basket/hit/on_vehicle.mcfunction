playsound minecraft:block.bamboo.hit block @a ~ ~ ~ 1 1.5

execute store result score $state cnk.dummy run data get entity @s item.components."minecraft:custom_model_data".flags[0]
execute if score $state cnk.dummy matches 1 run return run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}

scoreboard players add @s cnk.hit_count 1
particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:picnic_basket"}}} ~ ~0.3 ~ 0.4 0.3 0.4 0.1 5