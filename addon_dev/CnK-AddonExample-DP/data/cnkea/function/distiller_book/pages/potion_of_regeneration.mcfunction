# this is another example of a page register function, but specifically for the distiller book (brewer's digest)
# its VERY smilar to how cookbook page registration works, just with less fields and no sections, look at the pumpkin pie page for extensive info
# the distiller book does NOT have discoverability, so ingredients in here do not need database flags
# also, the distiller book does not show the output item of a recipe, just the ingredients

# this function must be added to the following section function tag for it to be loaded by cnk:
# - cnk:tags/function/addons/distiller_book/pages.json

# ---------------------------------------------------------------------------------

# sets the page number from the current global, MUST be present
execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_distiller_book_page cnk.dummy

# sets the page name
data modify storage cnk:temp register.page_name set value "item.minecraft.healing_potion"

# sets the ingredients
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.minecraft.water", font:"cnk.book:icons"}, \
    {key:"item.minecraft.glistering_melon_slice", font:"cnkea:icons"}, \
    {key:"item.minecraft.nether_wart", font:"cnkea:icons"}, \
]

# sets the source
data modify storage cnk:temp register.source set value {key:"cnkea.source", font:"cnkea:icons"}

# like with the cookbook, you can define a custom dialog function if needed:
# data modify storage cnk:temp register.dialog_function set value "..."

# register the page
function cnk:distiller_book/pages/register with storage cnk:temp register