tag @s remove cnk.treat_basket_effect
scoreboard players reset @s cnk.treat_basket_timer

execute if entity @s[tag=cnk.treat_basket_shrink] run function cnk:treat_basket/effects/shrink/stop
execute if entity @s[tag=cnk.treat_basket_freeze] run function cnk:treat_basket/effects/freeze/stop