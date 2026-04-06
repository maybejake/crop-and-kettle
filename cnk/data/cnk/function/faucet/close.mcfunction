tag @s remove cnk.faucet_open
tag @s add cnk.faucet_closed

data modify entity @s item.components."minecraft:item_model" set value "cnk:faucet_closed"
execute at @s run kill @n[type=minecraft:item_display,tag=cnk.faucet_water,distance=..0.5]
stopsound @a block minecraft:block.water.ambient
playsound cnk:block.faucet.off block @a ~ ~ ~ 1 0.8