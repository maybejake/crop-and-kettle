advancement revoke @s only cnk:fireball_pasta

execute at @s run playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 1 1
execute at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.05 20
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 20

tag @s add cnk.fireball_pasta
schedule function cnk:mystery/effects/ignite/resist 5s

# try ignition
execute if items entity @s saddle * run return fail
loot replace entity @s saddle loot cnk:technical/ignite

function cnk:mystery/effects/ignite/get_gamemode
gamemode spectator
function cnk:mystery/effects/ignite/restore_gamemode

item replace entity @s saddle with minecraft:air