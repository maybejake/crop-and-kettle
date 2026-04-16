item modify entity @s weapon.mainhand {"function":"set_custom_data","tag":{fix:"idk why this works but it does"}}
effect give @s invisibility infinite 0 true

# handle trades
execute if entity @s[tag=!cnk.fizz_trading] if entity @p[distance=..10] run function cnk:fizz/trading/main