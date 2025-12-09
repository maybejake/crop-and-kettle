$data modify storage cnk:cookbook pages.$(page_number) set from storage cnk:temp register
$data modify storage cnk:cookbook page_lookup.$(page_name) set value $(page_number)

#advance global
scoreboard players add $global_cookbook_page cnk.dummy 1

#clear storage
data remove storage cnk:temp register