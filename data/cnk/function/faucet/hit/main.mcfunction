advancement revoke @s only cnk:hit_faucet

scoreboard players set $hit_faucet_check cnk.dummy 0

tag @s add cnk.hit_faucet
execute as @e[type=minecraft:interaction,tag=cnk.faucet_interaction,distance=..20] run function cnk:faucet/hit/check
tag @s remove cnk.hit_faucet