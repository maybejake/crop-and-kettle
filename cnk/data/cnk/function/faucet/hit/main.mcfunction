advancement revoke @s only cnk:hit_faucet

tag @s add cnk.hit_faucet
execute as @n[type=minecraft:interaction,tag=cnk.faucet_interaction,nbt={attack:{}},distance=..20] run function cnk:faucet/hit/on_interaction
tag @s remove cnk.hit_faucet