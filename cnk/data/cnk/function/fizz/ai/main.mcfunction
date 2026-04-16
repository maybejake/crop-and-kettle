item modify entity @s weapon.mainhand {"function":"set_custom_data","tag":{fix:"idk why this works but it does"}}
effect give @s invisibility infinite 0 true

# handle trades
execute if entity @s[tag=!cnk.fizz_trading] if entity @p[gamemode=!spectator,distance=..10] run function cnk:fizz/trading/main

# check trade reset time
execute store result score $gametime cnk.dummy run time query gametime
execute if score @s cnk.trade_reset_time <= $gametime cnk.dummy run function cnk:fizz/ai/reset_trades