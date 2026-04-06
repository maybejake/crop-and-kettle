function cnk:cookbook/database/set/main {flag:"item.minecraft.dried_kelp"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/dried_kelp/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/dried_kelp/toast
