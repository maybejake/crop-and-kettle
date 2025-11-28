summon tnt ~ ~ ~ {fuse:0,explosion_power:0}
particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 20

damage @p[dx=0,gamemode=!spectator,gamemode=!creative] 7 cnk:pumpkin_missile by @s from @s

execute on passengers run kill @s
kill @s