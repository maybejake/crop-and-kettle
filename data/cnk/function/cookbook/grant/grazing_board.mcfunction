function cnk:cookbook/database/set/main {flag:"item.cnk.grazing_board"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/grazing_board/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/grazing_board/toast