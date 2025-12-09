function cnk:treat_basket/durability/mainhand/get
function cnk:treat_basket/durability/mainhand/replace with storage cnk:temp treat_basket
execute if score $damage cnk.dummy > $max_damage cnk.dummy run function cnk:treat_basket/durability/mainhand/break
tag @s remove cnk.treat_basket_mainhand