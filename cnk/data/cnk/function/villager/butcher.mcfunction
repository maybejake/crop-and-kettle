tag @s add cnk.butcher_villager

scoreboard players set $first_recipe cnk.dummy 0
scoreboard players set $second_recipe cnk.dummy 0

# potentially generate 3
function cnk:villager/chance
scoreboard players operation $first_recipe cnk.dummy = $recipe cnk.dummy

function cnk:villager/chance
scoreboard players operation $second_recipe cnk.dummy = $recipe cnk.dummy

function cnk:villager/chance