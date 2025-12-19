#ensure trigger is enabled
scoreboard players enable @s cnk.cookbook_buttons

#clear storage
data remove storage cnk:temp cookbook

#get player data
execute unless function cnk:cookbook/database/get/main run return fail

execute at @s run playsound item.book.page_turn neutral @s ~ ~ ~ 1 1

#set section states
function cnk:cookbook/set_section_states

#make sure current page is set to something
execute unless score @s cnk.cookbook_current_page matches 1.. run scoreboard players set @s cnk.cookbook_current_page 1

#min max
execute if score @s cnk.cookbook_current_page matches ..0 run scoreboard players set @s cnk.cookbook_current_page 1
execute if score @s cnk.cookbook_current_page > $global_cookbook_page cnk.dummy run scoreboard players operation @s cnk.cookbook_current_page = $global_cookbook_page cnk.dummy

#store number length for alignment
execute if score @s cnk.cookbook_current_page matches 1..9 run data modify storage cnk:temp cookbook.data.page_number_width set value "single"
execute if score @s cnk.cookbook_current_page matches 10..99 run data modify storage cnk:temp cookbook.data.page_number_width set value "double"
execute if score @s cnk.cookbook_current_page matches 100.. run data modify storage cnk:temp cookbook.data.page_number_width set value "triple"

#get page
execute store result storage cnk:temp cookbook.data.current_page int 1 run scoreboard players get @s cnk.cookbook_current_page
function cnk:cookbook/get_page with storage cnk:temp cookbook.data

scoreboard players set $ingredient_count cnk.dummy 0
execute store result score $ingredient_count cnk.dummy run data get storage cnk:temp cookbook.current_page.ingredients

#resolve ingredient flags
execute unless score $ingredient_count cnk.dummy matches 0 run function cnk:cookbook/resolve_ingredients

#copy some data
data modify storage cnk:temp cookbook.data.tool set from storage cnk:temp cookbook.current_page.tool
data modify storage cnk:temp cookbook.data.icon_font set from storage cnk:temp cookbook.current_page.icon_font
execute store result storage cnk:temp cookbook.data.ingredient_count int 1 run scoreboard players get $ingredient_count cnk.dummy

#handle source indicator
data modify storage cnk:temp cookbook.data.source_key set value "cnk.no_source"
data modify storage cnk:temp cookbook.data.source_font set value "cnk.book:base"
execute if data storage cnk:temp cookbook.current_page.source.key run data modify storage cnk:temp cookbook.data.source_key set from storage cnk:temp cookbook.current_page.source.key
execute if data storage cnk:temp cookbook.current_page.source.font run data modify storage cnk:temp cookbook.data.source_font set from storage cnk:temp cookbook.current_page.source.font

#handle stamp
function cnk:cookbook/stamp/main

#handle jump back
function cnk:cookbook/return/main

#check for dialog function
execute if data storage cnk:temp cookbook.current_page.dialog_function run return run function cnk:cookbook/open_page with storage cnk:temp cookbook.current_page

#no dialog function, build page
function cnk:cookbook/builder/build_page