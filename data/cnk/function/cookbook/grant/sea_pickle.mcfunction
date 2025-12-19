function cnk:cookbook/database/set/main {flag:"block.minecraft.sea_pickle"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/sea_pickle/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/sea_pickle/toast