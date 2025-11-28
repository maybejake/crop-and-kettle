tag @s add cnk.treat_basket_effect
tag @s add cnk.treat_basket_shrink

playsound minecraft:block.beacon.deactivate neutral @a ~ ~ ~ 1 2
particle minecraft:large_smoke ~ ~1 ~ 0.3 0.6 0.3 0 100

attribute @s minecraft:scale modifier add cnk:treat_basket_shrink -0.75 add_multiplied_total
attribute @s minecraft:movement_speed modifier add cnk:treat_basket_shrink 2 add_multiplied_total