execute store result score $pufferfish_puffstate cnk.iris run data get entity @s PuffState
execute if score $pufferfish_puffstate cnk.iris matches 0 run scoreboard players set $entity_width cnk.iris 350000
execute if score $pufferfish_puffstate cnk.iris matches 1 run scoreboard players set $entity_width cnk.iris 490000
execute if score $pufferfish_puffstate cnk.iris matches 2 run scoreboard players set $entity_width cnk.iris 700000
scoreboard players operation $entity_height cnk.iris = $entity_width cnk.iris

