scoreboard players add @s cnk.timer 1

tp @s ^ ^ ^0.1
execute unless block ^ ^ ^0.1 #cnk:blocks run return run tag @s add cnk.cork_kill

scoreboard players set $cork_hit_check cnk.dummy 0
execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#cnk:raybanned,tag=!smithed.strict,tag=!cnk.booze_part,dx=0] at @s run function cnk:booze/damage/cork/main
execute if score $cork_hit_check cnk.dummy matches 1 run return run tag @s add cnk.cork_kill

execute if score @s cnk.timer matches 1..29 at @s run function cnk:booze/attack/cork/loop