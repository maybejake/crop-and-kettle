data remove storage cnk:temp database
execute store result storage cnk:temp database.uid int 1 run scoreboard players get @s cnk.uid
return run function cnk:cookbook/database/reset/macro with storage cnk:temp database