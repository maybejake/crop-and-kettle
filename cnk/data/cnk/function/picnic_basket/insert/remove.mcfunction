$swing @s $(slot)
$item modify entity @s[gamemode=!creative] weapon.$(slot) {type:"minecraft:set_count", count:-$(item_count), add:true}