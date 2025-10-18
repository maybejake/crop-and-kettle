scoreboard players set $cork_hit_check cnk.dummy 1

damage @s 10 cnk:booze_cork
execute if entity @s[type=!minecraft:player] run return fail

function cnk:booze/damage/cork/get_gamemode
gamemode creative

tp ~ ~10000 ~
execute positioned ~ ~10000 ~ rotated as @n[type=minecraft:item_display,tag=cnk.cork] positioned ^ ^ ^-3 summon minecraft:end_crystal run damage @s 1
execute positioned ~ ~10000 ~ rotated as @n[type=minecraft:item_display,tag=cnk.cork] positioned ^ ^ ^-3 summon minecraft:end_crystal run damage @s 1
tp ~ ~ ~

function cnk:booze/damage/cork/restore_gamemode
