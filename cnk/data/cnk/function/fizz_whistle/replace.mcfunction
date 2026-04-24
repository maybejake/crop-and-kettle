execute as @a[tag=cnk.fizz_whistle_replace,predicate=cnk:mystery_meat/mainhand] run loot replace entity @s weapon.mainhand loot cnk:other/fizz_whistle
execute as @a[tag=cnk.fizz_whistle_replace,predicate=cnk:mystery_meat/offhand] run loot replace entity @s weapon.offhand loot cnk:other/fizz_whistle
tag @a[tag=cnk.fizz_whistle_replace] remove cnk.fizz_whistle_replace