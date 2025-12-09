execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.cutting_board"
data modify storage cnk:temp register.page_name set value "item.cnk.mutton_cutlets"
data modify storage cnk:temp register.recipe_icon_font set value "cnk.book:icons"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.minecraft.mutton", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"cnk.source", font:"cnk.book:base"}

function cnk:cookbook/pages/register