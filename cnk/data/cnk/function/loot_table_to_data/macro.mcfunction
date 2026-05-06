summon minecraft:item_display ~ ~1000 ~ {UUID:[I;-1475706897,2068990911,-2134644177,135739169]}
$loot replace entity a80a7fef-7b52-4bbf-80c3-ea2f08173721 contents loot $(loot_table)
data modify storage cnk:temp loot_table.data set from entity a80a7fef-7b52-4bbf-80c3-ea2f08173721 item
kill a80a7fef-7b52-4bbf-80c3-ea2f08173721