execute if entity @s[tag=cnk.no_toasts] run data modify storage cnk:temp settings.toasts set value "enable"
execute if entity @s[tag=!cnk.no_toasts] run data modify storage cnk:temp settings.toasts set value "disable"

function cnk:settings/dialog with storage cnk:temp settings