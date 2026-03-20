kill @n[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:hopper"}},distance=..1]
kill @n[type=minecraft:item,nbt={Age:1s,Item:{id:"minecraft:hopper"}},distance=..1]
function cnk:cooking_pot/drop

playsound minecraft:block.iron.break block @a ~ ~ ~ 1 1
execute if entity @s[tag=!cnk.stove] run stopsound @a[distance=..6] block cnk:block.cooking_pot.idling
execute if entity @s[tag=cnk.stove] run stopsound @a[distance=..6] block minecraft:block.campfire.crackle
kill @s