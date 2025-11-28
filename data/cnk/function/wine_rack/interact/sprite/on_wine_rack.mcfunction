execute store result score $wine_count cnk.dummy run data get entity @s item.components."minecraft:bundle_contents"
execute if score $wine_count cnk.dummy matches 0 run return fail

scoreboard players set $age_amount cnk.dummy 384000
scoreboard players operation $age_amount cnk.dummy /= $wine_count cnk.dummy
execute if score $age_amount cnk.dummy matches 0 run return fail

advancement grant @p[tag=cnk.sprite_use] only cnk:visible/spirit_sprite

data modify storage cnk:temp wine_rack.temp_contents set value []

execute if score $wine_count cnk.dummy matches 1.. run data modify storage cnk:temp wine_rack.current_item set from entity @s item.components."minecraft:bundle_contents"[0]
execute if score $wine_count cnk.dummy matches 1.. run function cnk:wine_rack/interact/sprite/age

execute if score $wine_count cnk.dummy matches 2.. run data modify storage cnk:temp wine_rack.current_item set from entity @s item.components."minecraft:bundle_contents"[1]
execute if score $wine_count cnk.dummy matches 2.. run function cnk:wine_rack/interact/sprite/age

execute if score $wine_count cnk.dummy matches 3.. run data modify storage cnk:temp wine_rack.current_item set from entity @s item.components."minecraft:bundle_contents"[2]
execute if score $wine_count cnk.dummy matches 3.. run function cnk:wine_rack/interact/sprite/age

execute if score $wine_count cnk.dummy matches 4.. run data modify storage cnk:temp wine_rack.current_item set from entity @s item.components."minecraft:bundle_contents"[3]
execute if score $wine_count cnk.dummy matches 4.. run function cnk:wine_rack/interact/sprite/age

data modify entity @s item.components."minecraft:bundle_contents" set from storage cnk:temp wine_rack.temp_contents

playsound cnk:item.spirit_sprite.use master @a ~ ~ ~ 1 1
playsound cnk:block.wine_rack.spirited master @a ~ ~ ~ 1 1

execute as @p[tag=cnk.sprite_use] run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}