data modify storage cnk:temp gift.block set from block ~ ~ ~
setblock ~ ~ ~ minecraft:air

data modify storage cnk:temp gift.otation set value 0
execute store result storage cnk:temp gift.rotation int 0.1 run scoreboard players get $rotation cnk.dummy

data modify storage cnk:temp gift.components set from storage cnk:temp gift.block.components
data modify storage cnk:temp gift.components."minecraft:item_model" set value "cnk:gift_closed"

function cnk:gift/macro with storage cnk:temp gift
scoreboard players set @n[type=minecraft:item_display,tag=cnk.gift] cnk.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.gift] cnk.hit_timer 0

playsound minecraft:block.leaf_litter.place block @a ~ ~ ~ 1 2
playsound minecraft:entity.item_frame.place block @a ~ ~ ~ 1 1