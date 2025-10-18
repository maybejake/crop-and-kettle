data remove entity @s interaction

execute on vehicle if entity @s[tag=cnk.mixing] run return fail

execute unless items entity @p[tag=cnk.interact_candy_bowl,predicate=cnk:sneaking] weapon.mainhand * on vehicle if score @s cnk.candy_count matches 1.. at @s run return run function cnk:candy_bowl/item/clear
execute unless items entity @p[tag=cnk.interact_candy_bowl] weapon.mainhand * on vehicle if score @s cnk.candy_count matches 1.. at @s run return run function cnk:candy_bowl/item/remove
execute if items entity @p[tag=cnk.interact_candy_bowl] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{cnk:{candy:{}}}] on vehicle if score @s cnk.candy_count matches ..63 at @s run return run function cnk:candy_bowl/item/add