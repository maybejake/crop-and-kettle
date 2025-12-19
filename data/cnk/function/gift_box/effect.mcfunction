scoreboard players set @s cnk.use_cooldown 5

advancement grant @s only cnk:visible/present

execute unless items entity @s weapon.offhand * run return fail
data modify storage cnk:temp gift_box.colors set from entity @s SelectedItem.components."minecraft:custom_model_data".colors
data modify storage cnk:temp gift_box.color set value 16777215
data modify storage cnk:temp gift_box.color set from entity @s SelectedItem.components."minecraft:dyed_color"
data modify storage cnk:temp gift_box.colors prepend from storage cnk:temp gift_box.color
data modify storage cnk:temp gift_box.item set from entity @s equipment.offhand

function cnk:gift_box/get_name

item replace entity @s weapon.offhand with minecraft:air
function cnk:gift_box/macro with storage cnk:temp gift_box

playsound minecraft:item.bundle.insert neutral @a ~ ~ ~ 1 0.8