advancement revoke @s only cnk:speak

playsound minecraft:entity.breeze.idle_ground player @s ~ ~ ~ 0.2 0.8
playsound minecraft:entity.breeze.idle_ground player @s ~ ~ ~ 0.1 1.3

execute store result score $random_speak cnk.dummy run random value 1..10
execute if score $random_speak cnk.dummy matches 1 run tellraw @s {translate:cnk.speak.1,color:"gray",italic:true}
execute if score $random_speak cnk.dummy matches 2 run tellraw @s {translate:cnk.speak.2,color:"gray",italic:true}
execute if score $random_speak cnk.dummy matches 3 run tellraw @s {translate:cnk.speak.3,color:"gray",italic:true}
execute if score $random_speak cnk.dummy matches 4 run tellraw @s {translate:cnk.speak.4,color:"gray",italic:true}
execute if score $random_speak cnk.dummy matches 5 run tellraw @s {translate:cnk.speak.5,color:"gray",italic:true}
execute if score $random_speak cnk.dummy matches 6 run tellraw @s {translate:cnk.speak.6,color:"gray",italic:true}
execute if score $random_speak cnk.dummy matches 7 run tellraw @s {translate:cnk.speak.7,color:"gray",italic:true}
execute if score $random_speak cnk.dummy matches 8 run tellraw @s {translate:cnk.speak.8,color:"gray",italic:true}
execute if score $random_speak cnk.dummy matches 9 run tellraw @s {translate:cnk.speak.9,color:"gray",italic:true}
execute if score $random_speak cnk.dummy matches 10 run tellraw @s {translate:cnk.speak.10,color:"gray",italic:true}

# prevent consumption
execute if predicate cnk:mystery_meat/mainhand run return run function cnk:mystery/speak/mainhand
execute if predicate cnk:mystery_meat/offhand run function cnk:mystery/speak/offhand