execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.mixing_bowl"
data modify storage cnk:temp register.page_name set value "item.cnk.dough"
data modify storage cnk:temp register.recipe_icon_font set value "cnk.book:icons"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.minecraft.wheat", font:"cnk.book:icons"}, \
    {key:"item.minecraft.water", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"cnk.source", font:"cnk.book:base"}

data modify storage cnk:temp register.dialog_function set value "cnk:cookbook/pages/dough/page"

function cnk:cookbook/pages/register with storage cnk:temp register