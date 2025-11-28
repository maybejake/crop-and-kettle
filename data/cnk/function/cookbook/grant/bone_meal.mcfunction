function cnk:cookbook/database/set/main {flag:"item.minecraft.bone_meal"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/bone_meal/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/bone_meal/toast