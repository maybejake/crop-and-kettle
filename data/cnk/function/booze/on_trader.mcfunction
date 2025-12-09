item modify entity @s weapon.mainhand {"function":"set_custom_data","tag":{fix:"idk why this works but it does"}}
item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
data modify entity @s DeathTime set value 19s
data remove entity @s Offers.Recipes

data modify storage cnk:temp booze.rotation set from entity @s Rotation[0]
execute on passengers if entity @s[tag=cnk.booze_body] run data modify entity @s Rotation[0] set from storage cnk:temp booze.rotation
execute on passengers on passengers if entity @s[tag=cnk.booze_bottle] rotated as @s run function cnk:booze/spin

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:20}} at @s anchored eyes run function cnk:booze/tick_20