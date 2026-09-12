execute unless data storage dcf:settings {enabled:true} run return fail
execute if entity @s[tag=dcf.open] run return fail

tag @s remove dcf.open
tag @s add dcf.ready

gamerule send_command_feedback false

execute store result score @s dcf.timer run schedule function dcf:player_setup/main 20t