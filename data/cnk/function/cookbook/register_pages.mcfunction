scoreboard players set $global_cookbook_page cnk.dummy 1
data modify storage cnk:cookbook pages set value {}
data modify storage cnk:cookbook page_lookup set value {}
data remove storage cnk:temp key_map

#clear storage
data remove storage cnk:temp register

# register pages
function #cnk:cookbook/sections

# register the back page
function cnk:cookbook/pages/back/register