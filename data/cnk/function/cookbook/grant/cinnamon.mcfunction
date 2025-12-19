function cnk:cookbook/database/set/main {flag:"item.cnk.cinnamon"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/cinnamon/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/cinnamon/toast