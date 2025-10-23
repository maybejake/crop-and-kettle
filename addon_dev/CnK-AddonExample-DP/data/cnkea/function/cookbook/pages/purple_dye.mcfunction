# for comprehensive comments, see the pumpkin pie page
execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.mixing_bowl"
data modify storage cnk:temp register.page_name set value "item.minecraft.purple_dye"
data modify storage cnk:temp register.recipe_icon_font set value "cnkea:icons"

data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.minecraft.blue_dye", font:"cnk.book:icons"}, \
    {key:"item.minecraft.red_dye", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"cnkea.source", font:"cnkea:icons"}

function cnk:cookbook/pages/register