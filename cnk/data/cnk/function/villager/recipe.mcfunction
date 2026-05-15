function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/tattered_recipe"}
function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/tattered_recipe"}
function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/explosive_recipe"}
function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/frigid_recipe"}
function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/heavenly_recipe"}
function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/roseate_recipe"}
function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/soaring_recipe"}
function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/thoughtful_recipe"}
function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/bubbling_recipe"}
function cnk:villager/add_loot_table {loot_table:"cnk:zzz_secret/flaming_recipe"}

function #cnk:addons/secret_recipe_trades

function cnk:villager/pick/main
function cnk:loot_table_to_data/main with storage cnk:temp secret_recipe

data remove storage cnk:temp recipe
data modify storage cnk:temp recipe.sell set from storage cnk:temp loot_table.data

data modify storage cnk:temp recipe.buy set value {"id":"minecraft:emerald", count:20}
data modify storage cnk:temp recipe.buyB set value {"id":"minecraft:paper", count:1}
data modify storage cnk:temp recipe.priceMultiplier set value 0.05f
data modify storage cnk:temp recipe.rewardExp set value true
data modify storage cnk:temp recipe.xp set value 10
data modify storage cnk:temp recipe.maxUses set value 3

data modify entity @s Offers.Recipes append from storage cnk:temp recipe