# for comprehensive comments, see the pumpkin pie page
execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.cutting_board"
data modify storage cnk:temp register.page_name set value "block.minecraft.stripped_oak_log"
data modify storage cnk:temp register.recipe_icon_font set value "cnkea:icons"

data modify storage cnk:temp register.ingredients set value [ \
    {key:"block.minecraft.oak_log", font:"cnkea:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"cnkea.source", font:"cnkea:icons"}

function cnk:cookbook/pages/register with storage cnk:temp register