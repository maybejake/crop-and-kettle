data modify storage cnk:temp model set value "cnk:cooking_pot"
data modify storage cnk:temp extra_tags set value ",'cnk.default_pot'"

data remove storage cnk:temp place.cooking_pot.block
data modify storage cnk:temp place.cooking_pot.block set from block ~ ~ ~ components."minecraft:custom_data".cnk.block
execute if data storage cnk:temp place.cooking_pot.block.witch_cauldron run return run function cnk:cooking_pot/variants/witch_cauldron
execute if data storage cnk:temp place.cooking_pot.block.stove run return run function cnk:cooking_pot/variants/stove
execute if data storage cnk:temp place.cooking_pot.block.panless_stove run return run function cnk:cooking_pot/variants/panless_stove

playsound cnk:block.cooking_pot.idling block @a[distance=..6] ~ ~ ~ 0.2 1