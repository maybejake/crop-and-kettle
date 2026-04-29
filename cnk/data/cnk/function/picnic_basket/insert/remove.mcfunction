$swing @s $(slot)
$item modify entity @s[gamemode=!creative] weapon.$(slot) {function:"minecraft:set_count", count:-$(item_count), add:true}