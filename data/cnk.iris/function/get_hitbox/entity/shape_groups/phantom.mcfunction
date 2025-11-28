scoreboard players set $entity_width cnk.iris 900000
scoreboard players set $entity_height cnk.iris 500000

execute store result score $phantom_size cnk.iris run data get entity @s Size
execute if score $phantom_size cnk.iris matches 0 run return 0
scoreboard players set $phantom_extra_width cnk.iris 135000
scoreboard players operation $phantom_extra_width cnk.iris *= $phantom_size cnk.iris
scoreboard players operation $entity_width cnk.iris += $phantom_extra_width cnk.iris
scoreboard players set $phantom_extra_height cnk.iris 75000
scoreboard players operation $phantom_extra_height cnk.iris *= $phantom_size cnk.iris
scoreboard players operation $entity_height cnk.iris += $phantom_extra_height cnk.iris
