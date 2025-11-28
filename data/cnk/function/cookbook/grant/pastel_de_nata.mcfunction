function cnk:cookbook/database/set/main {flag:"item.cnk.pastel_de_nata"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/pastel_de_nata/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/pastel_de_nata/toast