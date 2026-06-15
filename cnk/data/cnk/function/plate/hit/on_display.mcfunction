execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.plate_item] on vehicle run return run function cnk:plate/hit/remove_last

scoreboard players add @s cnk.hit_count 1
playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~0.1 ~ 0.3 0.1 0.3 0.1 5