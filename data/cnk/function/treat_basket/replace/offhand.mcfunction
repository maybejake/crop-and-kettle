function cnk:treat_basket/durability/offhand/get
function cnk:treat_basket/durability/offhand/replace with storage cnk:temp treat_basket
execute if score $damage cnk.dummy > $max_damage cnk.dummy run function cnk:treat_basket/durability/offhand/break
tag @s remove cnk.treat_basket_offhand