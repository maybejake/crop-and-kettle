execute store result score $unbreaking_chance cnk.dummy run random value 1..100
execute if entity @s[predicate=cnk:unbreaking/mainhand/3] if score $unbreaking_chance cnk.dummy matches ..75 run return 1
execute if entity @s[predicate=cnk:unbreaking/mainhand/2] if score $unbreaking_chance cnk.dummy matches ..66 run return 1
execute if entity @s[predicate=cnk:unbreaking/mainhand/1] if score $unbreaking_chance cnk.dummy matches ..50 run return 1
return fail