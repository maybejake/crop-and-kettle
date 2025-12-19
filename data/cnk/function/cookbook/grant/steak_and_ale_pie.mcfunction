function cnk:cookbook/database/set/main {flag:"item.cnk.steak_and_ale_pie"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/steak_and_ale_pie/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/steak_and_ale_pie/toast