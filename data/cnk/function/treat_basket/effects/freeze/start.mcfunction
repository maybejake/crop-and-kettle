tag @s add cnk.treat_basket_effect
tag @s add cnk.treat_basket_freeze

playsound entity.player.hurt_freeze neutral @a ~ ~ ~ 1 0.5
particle minecraft:snowflake ~ ~1 ~ 0.3 0.6 0.3 0 100

attribute @s minecraft:jump_strength modifier add cnk:treat_basket_freeze -1 add_multiplied_total
attribute @s minecraft:movement_speed modifier add cnk:treat_basket_freeze -1 add_multiplied_total