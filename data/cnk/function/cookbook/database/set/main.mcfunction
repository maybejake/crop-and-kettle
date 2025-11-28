#add dummy score (inventory change triggering before load function)
scoreboard objectives add cnk.dummy dummy

#reset set success
scoreboard players reset $set_success cnk.dummy

data remove storage cnk:temp database

$data modify storage cnk:temp database.flag set value $(flag)

execute store result storage cnk:temp database.uid int 1 run scoreboard players get @s cnk.uid

#entity has no uid score yet, fail set
execute if data storage cnk:temp database{uid:0} run return fail

function cnk:cookbook/database/set/macro with storage cnk:temp database