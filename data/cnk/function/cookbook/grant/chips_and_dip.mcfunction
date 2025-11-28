function cnk:cookbook/database/set/main {flag:"item.cnk.chips_and_dip"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/chips_and_dip/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/chips_and_dip/toast
