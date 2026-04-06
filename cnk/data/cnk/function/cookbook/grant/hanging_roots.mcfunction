function cnk:cookbook/database/set/main {flag:"block.minecraft.hanging_roots"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/hanging_roots/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/hanging_roots/toast