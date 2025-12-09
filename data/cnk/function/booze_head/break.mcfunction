kill @s
kill @n[type=minecraft:item,nbt={Item:{components:{"minecraft:profile":{"texture":"cnk:block/transparent_head"},"minecraft:note_block_sound":"cnk:entity.booze.idle"}}},distance=..30]

particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"cnk:booze_head"}}} ~ ~0.5 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot cnk:zzz_secret/booze_head