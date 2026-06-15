execute unless entity @s[tag=cnk.mixing] on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] on vehicle run return run function cnk:mixing_bowl/hit/remove_last

scoreboard players add @s cnk.hit_count 1
playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5