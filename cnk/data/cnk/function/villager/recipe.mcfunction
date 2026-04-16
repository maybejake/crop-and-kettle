execute store result score $recipe cnk.dummy run random value 1..9

execute if score $recipe cnk.dummy = $first_recipe cnk.dummy run return run function cnk:villager/recipe
execute if score $recipe cnk.dummy = $second_recipe cnk.dummy run return run function cnk:villager/recipe

data remove storage cnk:temp recipe
execute if score $recipe cnk.dummy matches 1 run function cnk:loot_table_to_data/main {loot_table:"cnk:zzz_secret/tattered_recipe"}
execute if score $recipe cnk.dummy matches 2 run function cnk:loot_table_to_data/main {loot_table:"cnk:zzz_secret/explosive_recipe"}
execute if score $recipe cnk.dummy matches 3 run function cnk:loot_table_to_data/main {loot_table:"cnk:zzz_secret/frigid_recipe"}
execute if score $recipe cnk.dummy matches 4 run function cnk:loot_table_to_data/main {loot_table:"cnk:zzz_secret/heavenly_recipe"}
execute if score $recipe cnk.dummy matches 5 run function cnk:loot_table_to_data/main {loot_table:"cnk:zzz_secret/roseate_recipe"}
execute if score $recipe cnk.dummy matches 6 run function cnk:loot_table_to_data/main {loot_table:"cnk:zzz_secret/soaring_recipe"}
execute if score $recipe cnk.dummy matches 7 run function cnk:loot_table_to_data/main {loot_table:"cnk:zzz_secret/thoughtful_recipe"}
execute if score $recipe cnk.dummy matches 8 run function cnk:loot_table_to_data/main {loot_table:"cnk:zzz_secret/bubbling_recipe"}
execute if score $recipe cnk.dummy matches 9 run function cnk:loot_table_to_data/main {loot_table:"cnk:zzz_secret/flaming_recipe"}
data modify storage cnk:temp recipe.sell set from storage cnk:temp loot_table.data

data modify storage cnk:temp recipe.buy set value {"id":"minecraft:emerald", count:20}
data modify storage cnk:temp recipe.buyB set value {"id":"minecraft:paper", count:1}
data modify storage cnk:temp recipe.priceMultiplier set value 0.05f
data modify storage cnk:temp recipe.rewardExp set value true
data modify storage cnk:temp recipe.xp set value 10
data modify storage cnk:temp recipe.maxUses set value 3

data modify entity @s Offers.Recipes append from storage cnk:temp recipe