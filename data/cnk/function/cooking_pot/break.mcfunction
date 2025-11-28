kill @n[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:hopper"}},distance=..1]
kill @n[type=minecraft:item,nbt={Age:1s,Item:{id:"minecraft:hopper"}},distance=..1]
execute if entity @s[tag=!cnk.witch_cauldron] run loot spawn ~ ~ ~ loot cnk:tools/cooking_pot
execute if entity @s[tag=cnk.witch_cauldron] run loot spawn ~ ~ ~ loot cnk:zzz_secret/witch_cauldron

playsound minecraft:block.iron.break block @a ~ ~ ~ 1 1
stopsound @a[distance=..6] block cnk:block.cooking_pot.idling
kill @s