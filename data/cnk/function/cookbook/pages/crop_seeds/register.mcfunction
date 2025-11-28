execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy
data modify storage cnk:temp register.page_name set value "crop_seeds"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.cnk.corn_seeds", font:"cnk.book:icons"}, \
    {key:"item.cnk.lettuce_seeds", font:"cnk.book:icons"}, \
    {key:"item.cnk.rice_seeds", font:"cnk.book:icons"}, \
    {key:"item.cnk.tomato_seeds", font:"cnk.book:icons"}, \
    {key:"item.cnk.coffee_cherries", font:"cnk.book:icons"}, \
    {key:"item.cnk.chili_pepper_seeds", font:"cnk.book:icons"}, \
    {key:"item.cnk.grape_seeds", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.dialog_function set value "cnk:cookbook/pages/crop_seeds/page"

function cnk:cookbook/pages/register