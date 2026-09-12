data modify storage cnk:temp loot_table.entries set value [ \
    {loot_table:"cnk:zzz_secret/tattered_recipe"}, \
    {loot_table:"cnk:zzz_secret/explosive_recipe"}, \
    {loot_table:"cnk:zzz_secret/frigid_recipe"}, \
    {loot_table:"cnk:zzz_secret/heavenly_recipe"}, \
    {loot_table:"cnk:zzz_secret/roseate_recipe"}, \
    {loot_table:"cnk:zzz_secret/soaring_recipe"}, \
    {loot_table:"cnk:zzz_secret/thoughtful_recipe"}, \
    {loot_table:"cnk:zzz_secret/bubbling_recipe"}, \
    {loot_table:"cnk:zzz_secret/flaming_recipe"}, \
]
function #cnk:addons/secret_recipe_trades

# remove duplicates
function cnk:villager/remove_duplicates with storage cnk:temp_recipe

# pick a recipe
function cnk:loot_table/random_to_data

data modify storage cnk:temp village.recipe set value {buy:{"id":"minecraft:emerald",count:20}, buyB:{"id":"minecraft:paper",count:1}, priceMultiplier:0.05f, rewardExp:true, xp:10, maxUses:3}
data modify storage cnk:temp recipe.sell set from storage cnk:temp loot_table.output

data modify entity @s Offers.Recipes append from storage cnk:temp recipe