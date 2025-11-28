#> cnk.iris:get_hitbox/entity/scale
#
# Scales a living entity according to its scale attribute
#
# @within cnk.iris:get_hitbox/entity

execute store result score $attribute_scale cnk.iris run attribute @s minecraft:scale get 1000
execute if score $attribute_scale cnk.iris matches 0 run return fail
execute if score $attribute_scale cnk.iris matches 1000 run return 0

scoreboard players operation $entity_width cnk.iris /= $10 cnk.iris
scoreboard players operation $entity_width cnk.iris *= $attribute_scale cnk.iris
scoreboard players operation $entity_width cnk.iris /= $100 cnk.iris

scoreboard players operation $entity_height cnk.iris /= $10 cnk.iris
scoreboard players operation $entity_height cnk.iris *= $attribute_scale cnk.iris
scoreboard players operation $entity_height cnk.iris /= $100 cnk.iris
