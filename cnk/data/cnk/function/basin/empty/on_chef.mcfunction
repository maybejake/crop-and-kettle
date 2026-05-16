swing @s mainhand
playsound minecraft:item.bottle.fill block @a ~ ~ ~ 1 1

scoreboard players add @s cnk.statistic.drinks_bottled 1
function #cnk:addons/on_chef/basin