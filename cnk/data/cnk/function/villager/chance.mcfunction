# 60% chance to generate recipe
execute store result score $chance cnk.dummy run random value 1..10
execute if score $chance cnk.dummy matches 8.. run return fail

function cnk:villager/recipe