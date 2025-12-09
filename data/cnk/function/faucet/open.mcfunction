tag @s remove cnk.faucet_closed
tag @s add cnk.faucet_open

data modify entity @s item.components."minecraft:item_model" set value "cnk:faucet_open"

data modify storage cnk:temp faucet.color set value 4159204
execute if predicate cnk:water/617b64 run data modify storage cnk:temp faucet.color set value 6388580
execute if predicate cnk:water/45adf2 run data modify storage cnk:temp faucet.color set value 4566514
execute if predicate cnk:water/43d5ee run data modify storage cnk:temp faucet.color set value 4445678
execute if predicate cnk:water/3d57d6 run data modify storage cnk:temp faucet.color set value 4020182
execute if predicate cnk:water/3938c9 run data modify storage cnk:temp faucet.color set value 3750089
execute if predicate cnk:water/0e4ecf run data modify storage cnk:temp faucet.color set value 937679
execute if predicate cnk:water/3a7a6a run data modify storage cnk:temp faucet.color set value 3832426
execute if predicate cnk:water/5db7ef run data modify storage cnk:temp faucet.color set value 6141935
execute if predicate cnk:water/76889d run data modify storage cnk:temp faucet.color set value 7768221

data modify entity @s item.components."minecraft:custom_model_data".colors set value []
data modify entity @s item.components."minecraft:custom_model_data".colors append from storage cnk:temp faucet.color

playsound minecraft:block.water.ambient block @a ~ ~ ~ 1 1.5
playsound cnk:block.faucet.on block @a ~ ~ ~ 1 0.8