execute if score $hit_picnic_basket_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_picnic_basket] run scoreboard players set $hit_picnic_basket_check cnk.dummy 1
execute if score $hit_picnic_basket_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_picnic_basket_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_picnic_basket_check cnk.dummy matches 1 on vehicle run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}
execute if score $hit_picnic_basket_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.bamboo.hit block @a ~ ~ ~ 1 1.5
execute if score $hit_picnic_basket_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:picnic_basket"}}} ~ ~0.3 ~ 0.4 0.3 0.4 0.1 5