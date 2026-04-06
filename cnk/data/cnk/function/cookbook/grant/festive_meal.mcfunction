function cnk:cookbook/database/set/main {flag:"item.cnk.festive_meal"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/festive_meal/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/festive_meal/toast