$data modify storage cnk:temp pail.liquid set value $(liquid)
function cnk:pail/interact/liquid_check/filled with storage cnk:temp pail
execute if score $liquid_check cnk.dummy matches 0 run return fail

$data modify storage cnk:temp pail.color set value $(color)
execute if data storage cnk:temp pail{liquid:"water"} run function cnk:pail/interact/fill/water_color

scoreboard players set $quantity cnk.dummy 8

execute unless function cnk:pail/interact/fill/fill run return fail

playsound minecraft:item.bucket.empty block @a ~ ~ ~ 1 1
execute as @p[tag=cnk.interact_pail] run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:bucket