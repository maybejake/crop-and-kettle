scoreboard players operation $hearty_page cnk.dummy = $global_cookbook_page cnk.dummy

execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy
data modify storage cnk:temp register.page_name set value "hearty"
data modify storage cnk:temp register.dialog_function set value "cnk:cookbook/sections/hearty/page"

function cnk:cookbook/pages/register

# register internal pages
function #cnk:cookbook/hearty

# register addon pages
function #cnk:addons/cookbook/hearty