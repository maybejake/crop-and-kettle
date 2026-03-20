scoreboard players set @s cnk.use_cooldown 5

execute if data storage cnk:admin settings{gift_box_disabled:true} run return run title @s actionbar {translate:"cnk.item_disabled", "color":"red"}

execute if predicate cnk:gift_box/mainhand unless predicate cnk:gift_box/offhand run function cnk:gift_box/effect