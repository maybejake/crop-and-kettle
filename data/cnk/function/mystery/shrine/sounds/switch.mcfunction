execute store result score $sound_choice cnk.dummy run random value 1..4

execute if score $sound_choice cnk.dummy matches 1 run playsound cnk:ambient.shrine.chimes ambient @a ~ ~ ~ 1 1
execute if score $sound_choice cnk.dummy matches 2 run playsound cnk:ambient.shrine.meat_1 ambient @a ~ ~ ~ 1 1
execute if score $sound_choice cnk.dummy matches 3 run playsound cnk:ambient.shrine.meat_2 ambient @a ~ ~ ~ 1 1
execute if score $sound_choice cnk.dummy matches 4 run playsound cnk:ambient.shrine.meat_3 ambient @a ~ ~ ~ 1 1