execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.mixing_bowl"
data modify storage cnk:temp register.page_name set value "item.cnk.ice_cream"
data modify storage cnk:temp register.recipe_icon_font set value "cnk.book:icons"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"block.minecraft.ice", font:"cnk.book:icons"}, \
    {key:"item.cnk.milk_bottle", font:"cnk.book:icons"}, \
    {key:"item.minecraft.sugar", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"cnk.source", font:"cnk.book:base"}

function cnk:cookbook/pages/register