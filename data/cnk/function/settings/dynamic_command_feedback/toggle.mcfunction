execute if score $dynamic_command_feedback cnk.dummy matches 1 run tellraw @s {"translate": "cnk.dialog.settings.dynamic_command_feedback.status", "with": [{'translate': 'cnk.disabled', 'color': 'red'}]}
execute if score $dynamic_command_feedback cnk.dummy matches 1 run return run scoreboard players reset $dynamic_command_feedback cnk.dummy

tellraw @s {"translate": "cnk.dialog.settings.dynamic_command_feedback.status", "with": [{'translate': 'cnk.enabled', 'color': 'green'}]}
scoreboard players set $dynamic_command_feedback cnk.dummy 1