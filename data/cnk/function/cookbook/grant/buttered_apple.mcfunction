function cnk:cookbook/database/set/main {flag:"item.cnk.buttered_apple"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/buttered_apple/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/buttered_apple/toast
