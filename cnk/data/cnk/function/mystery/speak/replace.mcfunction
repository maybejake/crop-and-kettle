execute as @a[tag=cnk.meat_replace,predicate=cnk:mystery_meat/mainhand] run loot replace entity @s weapon.mainhand loot cnk:food/mystery_meat
execute as @a[tag=cnk.meat_replace,predicate=cnk:mystery_meat/offhand] run loot replace entity @s weapon.offhand loot cnk:food/mystery_meat
tag @a[tag=cnk.meat_replace] remove cnk.meat_replace