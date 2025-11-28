execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.cooking_pot"
data modify storage cnk:temp register.page_name set value "item.cnk.italian_dinner"
data modify storage cnk:temp register.recipe_icon_font set value "cnk.book:icons"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.cnk.spaghetti", font:"cnk.book:icons"}, \
    {key:"item.minecraft.bread", font:"cnk.book:icons"}, \
    {key:"item.cnk.any_meat", font:"cnk.book:icons"}, \
    {key:"item.cnk.cheese", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.stamp set value { \
    icon:"book.cnk.stamp.plateable.icon", \
    text:"book.cnk.stamp.plateable.text" \
}

data modify storage cnk:temp register.source set value {key:"cnk.source", font:"cnk.book:base"}

function cnk:cookbook/pages/register