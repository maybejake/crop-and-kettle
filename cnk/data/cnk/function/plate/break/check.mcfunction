execute if score @s cnk.hit_timer matches 60 run scoreboard players reset @s cnk.hit_count
execute if score @s cnk.hit_timer matches 60 run return run scoreboard players reset @s cnk.hit_timer
execute if score @s cnk.hit_count matches 1..2 run return run scoreboard players add @s cnk.hit_timer 1

function cnk:plate/break/break