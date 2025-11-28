execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:100}} at @s run playsound cnk:item.spirit_sprite.idle master @a ~ ~ ~ 1 0.9

loot replace entity @s weapon.mainhand loot cnk:technical/spirit_sprite
item replace entity @s weapon.offhand with minecraft:air
data merge entity @s {DeathTime:19s,Inventory:[]}