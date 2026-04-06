function cnk:cookbook/database/set/main {flag:"block.minecraft.leaf_litter"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/leaf_litter/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/leaf_litter/toast
