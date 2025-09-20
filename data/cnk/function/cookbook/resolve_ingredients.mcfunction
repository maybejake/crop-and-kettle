#if recipe is not discoverable, just resolve all automatically
execute if data storage cnk:temp cookbook.current_page{discoverable:false} run return run function cnk:cookbook/auto_resolve

data modify storage cnk:temp cookbook.data.page_name set value "item.cnk.unknown"
data modify storage cnk:temp cookbook.data.recipe_icon_font set value "cnk.book:base"
data modify storage cnk:temp cookbook.ingredient.check set from storage cnk:temp cookbook.current_page.page_name
function cnk:cookbook/check_flag with storage cnk:temp cookbook.ingredient
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.page_name set from storage cnk:temp cookbook.ingredient.check
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.recipe_icon_font set from storage cnk:temp cookbook.current_page.recipe_icon_font

data modify storage cnk:temp cookbook.data.slot_1 set value "item.cnk.unknown"
data modify storage cnk:temp cookbook.data.font_1 set value "cnk.book:base"
data modify storage cnk:temp cookbook.ingredient.check set from storage cnk:temp cookbook.current_page.ingredients[0].key
function cnk:cookbook/check_flag with storage cnk:temp cookbook.ingredient
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.slot_1 set from storage cnk:temp cookbook.ingredient.check
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.font_1 set from storage cnk:temp cookbook.current_page.ingredients[0].font

execute if score $ingredient_count cnk.dummy matches ..1 run return fail
data modify storage cnk:temp cookbook.data.slot_2 set value "item.cnk.unknown"
data modify storage cnk:temp cookbook.data.font_2 set value "cnk.book:base"
data modify storage cnk:temp cookbook.ingredient.check set from storage cnk:temp cookbook.current_page.ingredients[1].key
function cnk:cookbook/check_flag with storage cnk:temp cookbook.ingredient
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.slot_2 set from storage cnk:temp cookbook.ingredient.check
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.font_2 set from storage cnk:temp cookbook.current_page.ingredients[1].font

execute if score $ingredient_count cnk.dummy matches ..2 run return fail
data modify storage cnk:temp cookbook.data.slot_3 set value "item.cnk.unknown"
data modify storage cnk:temp cookbook.data.font_3 set value "cnk.book:base"
data modify storage cnk:temp cookbook.ingredient.check set from storage cnk:temp cookbook.current_page.ingredients[2].key
function cnk:cookbook/check_flag with storage cnk:temp cookbook.ingredient
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.slot_3 set from storage cnk:temp cookbook.ingredient.check
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.font_3 set from storage cnk:temp cookbook.current_page.ingredients[2].font

execute if score $ingredient_count cnk.dummy matches ..3 run return fail
data modify storage cnk:temp cookbook.data.slot_4 set value "item.cnk.unknown"
data modify storage cnk:temp cookbook.data.font_4 set value "cnk.book:base"
data modify storage cnk:temp cookbook.ingredient.check set from storage cnk:temp cookbook.current_page.ingredients[3].key
function cnk:cookbook/check_flag with storage cnk:temp cookbook.ingredient
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.slot_4 set from storage cnk:temp cookbook.ingredient.check
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.font_4 set from storage cnk:temp cookbook.current_page.ingredients[3].font

execute if score $ingredient_count cnk.dummy matches ..4 run return fail
data modify storage cnk:temp cookbook.data.slot_5 set value "item.cnk.unknown"
data modify storage cnk:temp cookbook.data.font_5 set value "cnk.book:base"
data modify storage cnk:temp cookbook.ingredient.check set from storage cnk:temp cookbook.current_page.ingredients[4].key
function cnk:cookbook/check_flag with storage cnk:temp cookbook.ingredient
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.slot_5 set from storage cnk:temp cookbook.ingredient.check
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.font_5 set from storage cnk:temp cookbook.current_page.ingredients[4].font

execute if score $ingredient_count cnk.dummy matches ..5 run return fail
data modify storage cnk:temp cookbook.data.slot_6 set value "item.cnk.unknown"
data modify storage cnk:temp cookbook.data.font_6 set value "cnk.book:base"
data modify storage cnk:temp cookbook.ingredient.check set from storage cnk:temp cookbook.current_page.ingredients[5].key
function cnk:cookbook/check_flag with storage cnk:temp cookbook.ingredient
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.slot_6 set from storage cnk:temp cookbook.ingredient.check
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.font_6 set from storage cnk:temp cookbook.current_page.ingredients[5].font

execute if score $ingredient_count cnk.dummy matches ..6 run return fail
data modify storage cnk:temp cookbook.data.slot_7 set value "item.cnk.unknown"
data modify storage cnk:temp cookbook.data.font_7 set value "cnk.book:base"
data modify storage cnk:temp cookbook.ingredient.check set from storage cnk:temp cookbook.current_page.ingredients[6].key
function cnk:cookbook/check_flag with storage cnk:temp cookbook.ingredient
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.slot_7 set from storage cnk:temp cookbook.ingredient.check
execute if score $check_flag cnk.dummy matches 1 run data modify storage cnk:temp cookbook.data.font_7 set from storage cnk:temp cookbook.current_page.ingredients[6].font