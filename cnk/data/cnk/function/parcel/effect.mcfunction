scoreboard players set @s cnk.use_cooldown 5

function cnk:fizz/trading/parcel/main

playsound minecraft:item.bundle.drop_contents player @s ~ ~ ~ 1 1.2
playsound minecraft:block.leaf_litter.break player @a ~ ~ ~ 1 0.6

execute if predicate cnk:parcel/mainhand run return run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
execute if predicate cnk:parcel/offhand run return run item modify entity @s[gamemode=!creative] weapon.offhand {"function":"minecraft:set_count","count":-1,"add":true}