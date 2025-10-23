# this is an example of a page register function, which lets you add recipe pages to the cookbook
# this function must be added to one of the section function tags for it to be loaded by cnk:
# - cnk:tags/function/addons/cookbook/front.json (front pages, between the cover and the first section)
# - cnk:tags/function/addons/cookbook/staple.json (staple ingredients)
# - cnk:tags/function/addons/cookbook/snacks.json (snacks and drinks)
# - cnk:tags/function/addons/cookbook/light.json (light dishes)
# - cnk:tags/function/addons/cookbook/hearty.json (hearty dishes)
# - cnk:tags/function/addons/cookbook/feasts.json (feasts)
# - cnk:tags/function/addons/cookbook/desserts.json (desserts)

# custom sections are currently not supported, its technically possible but would be odd due to the lack of section button on the right
# if you feel like you NEED your own section, contact me directly to figure something out

# the page_name, ingredients and source fields are used for both text translations (hover event text) and icon characters!
# therefore, all of your translation keys for these fields icons MUST be prefixed with "book." as cnk will prefix them with it when they're used as icons eg:
# - text key for my cool item: "item.mynamespace.myitem"
# - icon for my cool item: "book.item.mynamespace.myitem"

# item icon font characters must be square and must have some kind of background for alignment purposes
# its best to just give them a VERY transparent black background (think 1% opacity), as cnk applies a background to them for you
# cnk's icon font (cnk.book:icons) contains all of cnk's ingredients and recipes as icons, as well as some minecraft items

# ---------------------------------------------------------------------------------

# sets the page number from the current global, MUST be present
execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

# sets the tool to be used, this changes the big image in the middle to indicate what to use to craft the recipe. currently available:
# - cnk.cooking_pot
# - cnk.mixing_bowl
# - cnk.cutting_board
data modify storage cnk:temp register.tool set value "cnk.cooking_pot"

# sets the name of the page, this should match the translation key for your item
data modify storage cnk:temp register.page_name set value "item.minecraft.pumpkin_pie"

# sets the font to be used for the recipe's item icon
data modify storage cnk:temp register.recipe_icon_font set value "cnkea:icons"

# sets the ingredients and, like above it should match the translation key for your items

# see the resource pack example!
# these ingredients are displayed in order, from left to right. if an ingredient is present as a recipe elsewhere in the cookbook, a reference will automatically be created
# you also have to set the font that each ingredient's icon is going to use, same as above
data modify storage cnk:temp register.ingredients set value [ \
    {key:"block.minecraft.pumpkin", font:"cnk.book:icons"}, \
    {key:"item.minecraft.egg", font:"cnk.book:icons"}, \
    {key:"item.minecraft.sugar", font:"cnk.book:icons"}, \
]

# sets the source, this is not a required field but is recommended. it is the translation key of an 8x8 asset placed at the bottom of the page used to identify a page's source
# helps players figure out where recipes came from
data modify storage cnk:temp register.source set value {key:"cnkea.source", font:"cnkea:icons"}

# the cookbook has discoverability built in! ingredients that don't have a flag set in the player's database will appear in the cookbook as questions marks
# however, if you want to disable discoverability for your recipe, so it is completely visible by default, set the following OPTIONAL field:
#data modify storage cnk:temp register.discoverable set value false

# pages are built automagically, based on the values above! don't want to use the normal layout? you can register a dialog function instead using:
# data modify storage cnk:temp register.dialog_function set value "..."
# this is called instead of the page builder, see the kebab_sword or crop_seeds pages in the core cnk datapack for good examples on how to make custom pages:
# - cnk:cookbook/pages/kebab_sword/page
# - cnk:cookbook/pages/crop_seeds/page

# as of version 1.1.5, Crop & Kettle has an automatic font management system in the backend, to avoid any compatibility issues when multiple packs are adding the same items in different fonts
# the general rule is that; the font used by the first registration of a key is automatically applied to all subsequent uses of that same key
# for example:
#   - addon1 adds "block.minecraft.cobblestone" to their font; "addon1:icons"
#   - addon2 is loaded after addon1 and adds the same key to their font; "addon2:icons"
#   - addon2 will have its font for that key automatically overwritten with "addon1:icons" to avoid breaking other pages
# you generally don't need to worry about this, but it is cool!

# all your values have been set, register the page! this MUST be present otherwise the page will not be registered
function cnk:cookbook/pages/register

# your recipe will always be inserted at the BACK of a section, after cnk recipes. if multiple addons are loaded, the order of those addon's recipes depend on the order in which those datapacks are loaded
# cnk recipes are ordered alphabetically in their internal tag, and i haven't figured out a good way to dynamically order all recipes alphabetically yet :)