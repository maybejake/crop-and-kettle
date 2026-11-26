function cnk:insert_loot/place/main

scoreboard players remove $loops cnk.dummy 1
execute if score $loops cnk.dummy matches 1.. run function cnk:insert_loot/loop
