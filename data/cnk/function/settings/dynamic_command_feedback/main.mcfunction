data modify storage cnk:temp dynamic_command_feedback.status set value "{'translate': 'cnk.disabled', 'color': 'red'}"
execute if score $dynamic_command_feedback cnk.dummy matches 1 run data modify storage cnk:temp dynamic_command_feedback.status set value "{'translate': 'cnk.enabled', 'color': 'green'}"

function cnk:settings/dynamic_command_feedback/dialog with storage cnk:temp dynamic_command_feedback

scoreboard players reset @s cnk.settings
scoreboard players enable @s cnk.settings