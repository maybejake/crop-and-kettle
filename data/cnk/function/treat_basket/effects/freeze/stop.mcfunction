tag @s remove cnk.treat_basket_freeze

playsound minecraft:item.firecharge.use neutral @a ~ ~ ~ 1 1
particle minecraft:flame ~ ~1 ~ 0.3 0.6 0.3 0 100

attribute @s minecraft:jump_strength modifier remove cnk:treat_basket_freeze
attribute @s minecraft:movement_speed modifier remove cnk:treat_basket_freeze