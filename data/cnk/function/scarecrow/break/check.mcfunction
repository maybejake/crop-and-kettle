execute if score @s cnk.hit_timer matches 60 run scoreboard players set @s cnk.hit_count 0
execute if score @s cnk.hit_timer matches 60 run return run scoreboard players set @s cnk.hit_timer 0
execute if score @s cnk.hit_count matches 1..2 run return run scoreboard players add @s cnk.hit_timer 1

function cnk:scarecrow/break/break