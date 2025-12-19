scoreboard players add @s cnk.spin_timer 1

execute if score @s cnk.spin_timer matches ..1 run data modify entity @s NoAI set value true

execute if score @s cnk.spin_timer matches 2..3 rotated as @s run tp @s ~ ~ ~ ~90 ~
execute if score @s cnk.spin_timer matches 2..3 rotated as @s anchored eyes run particle minecraft:sweep_attack ^ ^ ^1
execute if score @s cnk.spin_timer matches 2..3 run damage @p[distance=..2,gamemode=!spectator,gamemode=!creative] 7 cnk:scarecrow_spin by @s from @s
execute if score @s cnk.spin_timer matches 2 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1


execute if score @s cnk.spin_timer matches 4.. run tag @s remove cnk.spin_attack
execute if score @s cnk.spin_timer matches 4.. run data remove entity @s NoAI
execute if score @s cnk.spin_timer matches 4.. run scoreboard players reset @s cnk.spin_timer