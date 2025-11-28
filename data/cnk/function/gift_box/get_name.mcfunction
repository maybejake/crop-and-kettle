summon minecraft:item_display ~ ~ ~ {Tags:["cnk.get_head"]}
loot replace entity @n[type=minecraft:item_display,tag=cnk.get_head] contents loot {"type":"entity","pools":[{"rolls":1,"entries":[{"type":"item","name":"player_head","functions":[{"function":"fill_player_head","entity":"this"}]}]}]}
data modify storage cnk:temp gift_box.name set from entity @n[type=minecraft:item_display,tag=cnk.get_head] item.components."minecraft:profile".name
kill @n[type=minecraft:item_display,tag=cnk.get_head]