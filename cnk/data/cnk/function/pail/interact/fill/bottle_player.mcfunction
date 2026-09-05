swing @s mainhand
item modify entity @s[gamemode=!creative] weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}
execute if predicate cnk:inventory_full run return run loot spawn ~ ~1 ~ loot cnk:other/glass_bottle
loot give @s loot cnk:other/glass_bottle