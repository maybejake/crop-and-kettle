function cnk:cookbook/database/set/main {flag:"item.cnk.gingerbread"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/gingerbread/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/gingerbread/toast