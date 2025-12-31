# 30% chance to generate recipe
execute store result score $chance cnk.dummy run random value 0..2
execute if score $chance cnk.dummy matches 0 run return fail

function cnk:villager/recipe