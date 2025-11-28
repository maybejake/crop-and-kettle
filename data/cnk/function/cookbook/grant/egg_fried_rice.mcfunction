function cnk:cookbook/database/set/main {flag:"item.cnk.egg_fried_rice"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/egg_fried_rice/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/egg_fried_rice/toast