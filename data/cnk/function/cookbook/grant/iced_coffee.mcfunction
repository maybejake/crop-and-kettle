function cnk:cookbook/database/set/main {flag:"item.cnk.iced_coffee"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/iced_coffee/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/iced_coffee/toast