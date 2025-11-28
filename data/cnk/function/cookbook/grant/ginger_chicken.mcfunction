function cnk:cookbook/database/set/main {flag:"item.cnk.ginger_chicken"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/ginger_chicken/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/ginger_chicken/toast