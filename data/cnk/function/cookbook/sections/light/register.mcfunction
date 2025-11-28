scoreboard players operation $light_page cnk.dummy = $global_cookbook_page cnk.dummy

execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy
data modify storage cnk:temp register.page_name set value "light"
data modify storage cnk:temp register.dialog_function set value "cnk:cookbook/sections/light/page"

function cnk:cookbook/pages/register

# register internal pages
function #cnk:cookbook/light

# register addon pages
function #cnk:addons/cookbook/light