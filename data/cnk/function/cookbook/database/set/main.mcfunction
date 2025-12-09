data remove storage cnk:temp database

$data modify storage cnk:temp database.flag set value $(flag)

execute store result storage cnk:temp database.uid int 1 run scoreboard players get @s cnk.uid
function cnk:cookbook/database/set/macro with storage cnk:temp database