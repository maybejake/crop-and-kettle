execute if entity @s[tag=cnk.cork_setup] run return run tag @s remove cnk.cork_setup

scoreboard players add @s cnk.distance 1
execute if score @s cnk.distance matches 30.. run return run kill @s

execute if entity @s[tag=cnk.cork_kill] run return run kill @s

scoreboard players set @s cnk.timer 0
function cnk:booze/attack/cork/loop