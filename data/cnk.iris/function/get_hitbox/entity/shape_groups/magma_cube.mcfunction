scoreboard players set $entity_width cnk.iris 510000
scoreboard players set $entity_height cnk.iris 510000
execute store result score $slime_size cnk.iris run data get entity @s Size
scoreboard players add $slime_size cnk.iris 1
scoreboard players operation $entity_width cnk.iris *= $slime_size cnk.iris
scoreboard players operation $entity_height cnk.iris *= $slime_size cnk.iris
