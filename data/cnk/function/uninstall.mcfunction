tellraw @a [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":cnk.uninstalled,"font":"minecraft:default"}]

scoreboard objectives remove cnk.distance
scoreboard objectives remove cnk.reach
scoreboard objectives remove cnk.age
scoreboard objectives remove cnk.dummy
scoreboard objectives remove cnk.max_age

scoreboard objectives remove cnk.break_short_grass
scoreboard objectives remove cnk.break_tall_grass

scoreboard objectives remove cnk.cooking_pot_item_count
scoreboard objectives remove cnk.cook_time
scoreboard objectives remove cnk.cook_cooldown

scoreboard objectives remove cnk.hit_count
scoreboard objectives remove cnk.hit_timer

scoreboard objectives remove cnk.item_count
scoreboard objectives remove cnk.mix_time
scoreboard objectives remove cnk.rotation

scoreboard objectives remove cnk.rotten_tomato

scoreboard objectives remove cnk.uid

scoreboard objectives remove cnk.brew_time

scoreboard objectives remove cnk.timer

scoreboard objectives remove cnk.scythe_cooldown

scoreboard objectives remove cnk.level

scoreboard objectives remove cnk.distill_timer

scoreboard objectives remove cnk.wine_time_cooldown

scoreboard objectives remove cnk.wine_time

scoreboard objectives remove cnk.creeping_wine

scoreboard objectives remove cnk.drop_food

scoreboard objectives remove cnk.speak_cooldown

scoreboard objectives remove cnk.use_book

scoreboard objectives remove cnk.use_lectern

scoreboard objectives remove cnk.cookbook_buttons

scoreboard objectives remove cnk.cookbook_current_page

scoreboard objectives remove cnk.distiller_book_buttons

scoreboard objectives remove cnk.distiller_book_current_page

scoreboard objectives remove cnk.settings

scoreboard objectives remove cnk.foodie_book_buttons

data remove storage cnk:temp seed_count
data remove storage cnk:temp produce_count
data remove storage cnk:temp item_count
data remove storage cnk:temp motion_strength1
data remove storage cnk:temp motion_strength2
data remove storage cnk:temp rotation
data remove storage cnk:temp cooking_pot
data remove storage cnk:temp cutting_board
data remove storage cnk:temp cookbook
data remove storage cnk:temp register

data remove storage cnk:cookbook database
data remove storage cnk:cookbook pages
data remove storage cnk:cookbook page_lookup

schedule clear cnk:tick_2
schedule clear cnk:tick_5
schedule clear cnk:tick_20
schedule clear cnk:tick_100