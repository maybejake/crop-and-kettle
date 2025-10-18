execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.mixing_bowl"
data modify storage cnk:temp register.page_name set value "item.cnk.trail_mix"
data modify storage cnk:temp register.recipe_icon_font set value "cnk.book:icons"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.cnk.raisins", font:"cnk.book:icons"}, \
    {key:"item.cnk.popcorn", font:"cnk.book:icons"}, \
    {key:"item.cnk.any_seed", font:"cnk.book:icons"}, \
    {key:"item.cnk.chocolate_bar", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"cnk.source", font:"cnk.book:base"}

function cnk:cookbook/pages/register with storage cnk:temp register