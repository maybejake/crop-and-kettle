$execute if block ^-0.7 ^-0.32 ^ #cnk:chest run return run loot insert ^-0.7 ^-0.32 ^ loot $(item)

$summon minecraft:item ^-0.7 ^-0.32 ^ {Item:{id:"minecraft:barrier"},Motion:$(motion),Tags:["cnk.distiller_byproduct"]}
$execute positioned ^-0.7 ^-0.32 ^ as @n[type=minecraft:item,tag=cnk.distiller_byproduct,distance=..0.1] run loot replace entity @s contents loot $(item)
execute positioned ^-0.7 ^-0.32 ^ run tag @n[type=minecraft:item,tag=cnk.distiller_byproduct,distance=..0.1] remove cnk.distiller_byproduct