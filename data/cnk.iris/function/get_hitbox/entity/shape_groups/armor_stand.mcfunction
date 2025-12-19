data modify storage cnk.iris:data EntityTag set from entity @s
execute if data storage cnk.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width cnk.iris 250000
execute if data storage cnk.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height cnk.iris 987500
execute unless data storage cnk.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width cnk.iris 500000
execute unless data storage cnk.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height cnk.iris 1975000
execute if data storage cnk.iris:data EntityTag{Marker: 1b} store result score $entity_width cnk.iris run scoreboard players set $entity_height cnk.iris 0