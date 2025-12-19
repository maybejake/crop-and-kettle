scoreboard players set @s cnk.use_book 0

execute if entity @s[predicate=cnk:cookbook] run return run function cnk:cookbook/open
execute if entity @s[predicate=cnk:distiller_book] run return run function cnk:distiller_book/open
execute if entity @s[predicate=cnk:foodie_book] run return run function cnk:foodie_book/open