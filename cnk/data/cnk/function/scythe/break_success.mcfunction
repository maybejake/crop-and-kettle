scoreboard players set $scythe_check cnk.dummy 1

scoreboard players add @s cnk.crops_harvested 1
execute if predicate cnk:scythe/mainhand run return run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if predicate cnk:scythe/offhand run return run loot spawn ~ ~ ~ mine ~ ~ ~ offhand