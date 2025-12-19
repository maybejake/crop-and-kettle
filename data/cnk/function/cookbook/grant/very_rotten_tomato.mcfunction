function cnk:cookbook/database/set/main {flag:"item.cnk.very_rotten_tomato"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/very_rotten_tomato/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/very_rotten_tomato/toast