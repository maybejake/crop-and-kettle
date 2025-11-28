function cnk:cookbook/database/set/main {flag:"item.minecraft.sweet_berries"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/sweet_berries/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/sweet_berries/toast