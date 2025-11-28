function cnk:cookbook/database/set/main {flag:"item.cnk.snow_cream"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/snow_cream/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/snow_cream/toast