function cnk:cookbook/database/set/main {flag:"item.cnk.rainy_day_lunch"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/rainy_day_lunch/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/rainy_day_lunch/toast
