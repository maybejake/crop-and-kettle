execute if score $interact_faucet_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_faucet] run scoreboard players set $interact_faucet_check cnk.dummy 1
execute if score $interact_faucet_check cnk.dummy matches 1 run function cnk:faucet/interact/found