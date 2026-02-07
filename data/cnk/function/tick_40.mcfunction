schedule function cnk:tick_40 60t replace

scoreboard players set $cookbook_open_check cnk.dummy 0
execute as @a[tag=cnk.book_open] run function cnk:cookbook/check_open/main
execute if score $cookbook_open_check cnk.dummy matches 0 run gamerule send_command_feedback true