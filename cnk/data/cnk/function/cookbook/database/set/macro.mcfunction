$data modify storage cnk:cookbook database.$(uid)."$(flag)" set value true

#validate that data was set
$execute if data storage cnk:cookbook database.$(uid)."$(flag)" run return run scoreboard players set $set_success cnk.dummy 1