execute if entity @s[tag=cnk.faucet_closed] positioned ~ ~-1 ~ if function cnk:faucet/interact/check run return run function cnk:faucet/open/1_block
execute if entity @s[tag=cnk.faucet_closed] positioned ~ ~-2 ~ if function cnk:faucet/interact/check run return run function cnk:faucet/open/2_block
execute if entity @s[tag=cnk.faucet_open_1] run return run function cnk:faucet/interact/close
execute if entity @s[tag=cnk.faucet_open_2] run return run function cnk:faucet/interact/close