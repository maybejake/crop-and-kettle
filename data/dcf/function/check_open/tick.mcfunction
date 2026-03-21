scoreboard players set $open_check dcf.dummy 0

execute as @a[tag=dcf.open] run function dcf:check_open/main

execute if score $open_check dcf.dummy matches 0 run return run gamerule send_command_feedback true
gamerule send_command_feedback false