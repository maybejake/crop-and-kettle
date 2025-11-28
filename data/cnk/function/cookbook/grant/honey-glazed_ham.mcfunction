function cnk:cookbook/database/set/main {flag:"item.cnk.honey-glazed_ham"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/honey-glazed_ham/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/honey-glazed_ham/toast