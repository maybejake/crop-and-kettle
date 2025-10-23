scoreboard players set $front_page cnk.dummy 1

execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy
data modify storage cnk:temp register.page_name set value "front"
data modify storage cnk:temp register.dialog_function set value "cnk:cookbook/sections/front/page"

function cnk:cookbook/pages/register

# register internal pages
function #cnk:cookbook/front

# register addon pages
function #cnk:addons/cookbook/front