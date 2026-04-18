tag @s add cnk.chef_checked

execute store result score $chance cnk.dummy run random value 1..100
execute if score $chance cnk.dummy matches ..5 run function cnk:chef/modify