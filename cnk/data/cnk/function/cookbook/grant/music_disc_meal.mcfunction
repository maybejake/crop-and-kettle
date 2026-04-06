function cnk:cookbook/database/set/main {flag:"item.cnk.music_disc_meal"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/music_disc_meal/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/music_disc_meal/toast
