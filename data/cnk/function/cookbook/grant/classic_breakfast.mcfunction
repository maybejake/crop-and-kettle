function cnk:cookbook/database/set/main {flag:"item.cnk.classic_breakfast"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/classic_breakfast/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/classic_breakfast/toast
