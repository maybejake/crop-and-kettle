execute if score @s cnk.settings matches 2 run function cnk:settings/toast
execute if score @s cnk.settings matches 3 run function cnk:cookbook/unlock
execute if score @s cnk.settings matches 4 run function cnk:cookbook/reset

function cnk:settings/open

scoreboard players reset @s cnk.settings
scoreboard players enable @s cnk.settings