scoreboard players set $found_player dcf.dummy 0
scoreboard players set $open_check dcf.dummy 0

execute as @a[tag=dcf.open] run function dcf:check_open/main

# found players, but none of them have a book open
execute if score $found_player dcf.dummy matches 1 if score $open_check dcf.dummy matches 0 run gamerule send_command_feedback true