advancement revoke @s only cnk:treat_basket

execute if predicate cnk:treat_basket/offhand run tag @s add cnk.treat_basket_offhand
execute if predicate cnk:treat_basket/mainhand run tag @s add cnk.treat_basket_mainhand
execute if predicate cnk:treat_basket/mainhand run tag @s remove cnk.treat_basket_offhand

playsound cnk:block.candy_bowl.laugh neutral @a ~ ~ ~ 1 1
execute store result score $treat cnk.dummy run random value 1..13

execute if score $treat cnk.dummy matches 1 run function cnk:treat_basket/effects/shrink/start

execute if score $treat cnk.dummy matches 2 run function cnk:treat_basket/effects/freeze/start

execute if score $treat cnk.dummy matches 3 run effect give @s minecraft:regeneration 30 1 false

execute if score $treat cnk.dummy matches 4 run effect give @s minecraft:saturation 30 0 false

execute if score $treat cnk.dummy matches 5 positioned ~ ~3 ~ run function cnk:dev/spawn_random
execute if score $treat cnk.dummy matches 5 positioned ~ ~3 ~ run playsound minecraft:entity.item_frame.remove_item neutral @a ~ ~ ~ 1 1

execute if score $treat cnk.dummy matches 6 run effect give @s minecraft:levitation 20 0 false

execute if score $treat cnk.dummy matches 7 run function cnk:mystery/effects/confetti/main

execute if score $treat cnk.dummy matches 8 run spreadplayers ~ ~ 30 30 true @s
execute if score $treat cnk.dummy matches 8 at @s run playsound minecraft:entity.player.teleport neutral @s ~ ~ ~

execute if score $treat cnk.dummy matches 9 anchored eyes run playsound minecraft:entity.creeper.primed neutral @s ^ ^ ^-2

execute if score $treat cnk.dummy matches 10 run effect give @s minecraft:invisibility 30 0 true

execute if score $treat cnk.dummy matches 11 run function cnk:treat_basket/effects/doppelganger/main

execute if score $treat cnk.dummy matches 12 run function cnk:treat_basket/effects/bats/main

execute if score $treat cnk.dummy matches 13 run effect give @s minecraft:blindness 20 0 false

schedule function cnk:treat_basket/replace/main 1t