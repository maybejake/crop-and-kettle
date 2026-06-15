advancement revoke @s only cnk:interact_faucet

tag @s add cnk.interact_faucet
execute as @n[type=minecraft:interaction,tag=cnk.faucet_interaction,nbt={interaction:{}},distance=..20] run function cnk:faucet/interact/on_interaction
tag @s remove cnk.interact_faucet