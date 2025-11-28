function cnk:cookbook/database/set/main {flag:"item.cnk.cod_fillets"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/cod_fillets/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/cod_fillets/toast
