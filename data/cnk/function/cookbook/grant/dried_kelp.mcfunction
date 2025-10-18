execute store result score $seeds cnk.dummy run clear @s minecraft:dried_kelp[minecraft:custom_data~{cnk:{seed:true}}] 0
execute unless score $seeds cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/dried_kelp/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/dried_kelp/toast

function cnk:cookbook/database/set/main {flag:"item.minecraft.dried_kelp"}