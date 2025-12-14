execute if score @s cnk.settings matches 2 run function cnk:settings/toast
execute if score @s cnk.settings matches 3 run function cnk:settings/unlock_cookbook
execute if score @s cnk.settings matches 4 run function cnk:settings/reset_cookbook

function cnk:settings/open

scoreboard players reset @s cnk.settings
scoreboard players enable @s cnk.settings