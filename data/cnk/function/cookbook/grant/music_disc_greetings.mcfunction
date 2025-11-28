function cnk:cookbook/database/set/main {flag:"item.cnk.music_disc_greetings"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/music_disc_greetings/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/music_disc_greetings/toast