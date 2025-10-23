execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_distiller_book_page cnk.dummy

data modify storage cnk:temp register.page_name set value "item.cnk.prospecting_wine"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.minecraft.water", font:"cnk.book:icons"}, \
    {key:"item.cnk.any_fruit", font:"cnk.book:icons"}, \
    {key:"item.minecraft.amethyst_shard", font:"cnk.book:icons"}, \
    {key:"item.minecraft.golden_carrot", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"cnk.source", font:"cnk.book:base"}

function cnk:distiller_book/pages/register