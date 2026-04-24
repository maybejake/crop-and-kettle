scoreboard players set @s cnk.use_cooldown 5

# give rewards
function cnk:fizz/trading/parcel/main

# particle
execute at @s anchored eyes run particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"cnk:lily_pad_parcel"}}} ^ ^-0.35 ^0.65 0.1 0.1 0.1 0.06 10 force

# sounds
playsound minecraft:item.bundle.drop_contents player @a ~ ~ ~ 1 1.2
playsound minecraft:block.leaf_litter.break player @a ~ ~ ~ 1 0.6

execute if predicate cnk:parcel/mainhand run return run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
execute if predicate cnk:parcel/offhand run return run item modify entity @s[gamemode=!creative] weapon.offhand {"function":"minecraft:set_count","count":-1,"add":true}