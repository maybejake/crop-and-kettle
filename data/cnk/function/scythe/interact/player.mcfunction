execute anchored eyes at @s run particle minecraft:sweep_attack ^ ^-0.3 ^1.2 0 0 0 0 1 force
playsound entity.player.attack.sweep neutral @a ~ ~ ~ 1 1

function cnk:scythe/interact/swing

execute if entity @s[gamemode=creative] run return fail
execute if predicate cnk:scythe/mainhand run return run function cnk:scythe/durability/mainhand/handle
execute if predicate cnk:scythe/offhand run return run function cnk:scythe/durability/offhand/handle