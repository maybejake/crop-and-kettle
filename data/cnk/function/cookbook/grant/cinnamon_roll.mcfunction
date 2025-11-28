function cnk:cookbook/database/set/main {flag:"item.cnk.cinnamon_roll"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/cinnamon_roll/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/cinnamon_roll/toast