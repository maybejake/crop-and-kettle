# for comprehensive comments, see the pumpkin pie grant function
function cnk:cookbook/database/set/main {flag:"item.minecraft.purple_dye"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnkea:cookbook/purple_dye/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnkea:cookbook/purple_dye/toast