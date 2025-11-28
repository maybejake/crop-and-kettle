function cnk:cookbook/database/set/main {flag:"item.minecraft.white_dye"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/white_dye/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/white_dye/toast