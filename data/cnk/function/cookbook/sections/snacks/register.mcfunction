scoreboard players operation $snacks_page cnk.dummy = $global_cookbook_page cnk.dummy

execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy
data modify storage cnk:temp register.page_name set value "snacks"
data modify storage cnk:temp register.dialog_function set value "cnk:cookbook/sections/snacks/page"

function cnk:cookbook/pages/register with storage cnk:temp register

# register internal pages
function #cnk:cookbook/snacks

# register addon pages
function #cnk:addons/cookbook/snacks