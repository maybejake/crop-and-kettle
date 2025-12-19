function cnk:cookbook/database/set/main {flag:"block.minecraft.acacia_log"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/acacia_log/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/acacia_log/toast