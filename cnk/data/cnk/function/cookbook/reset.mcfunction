advancement revoke @s from cnk:cookbook/root
advancement revoke @s from cnk:cookbook/toasts
function cnk:cookbook/database/reset/main

scoreboard players reset @s cnk.previous_incomplete_recipe
scoreboard players reset @s cnk.next_incomplete_recipe