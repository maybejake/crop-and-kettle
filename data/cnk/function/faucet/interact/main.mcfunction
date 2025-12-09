advancement revoke @s only cnk:interact_faucet

scoreboard players set $interact_faucet_check cnk.dummy 0

tag @s add cnk.interact_faucet
execute as @e[type=minecraft:interaction,tag=cnk.faucet_interaction,distance=..20] run function cnk:faucet/interact/check
tag @s remove cnk.interact_faucet