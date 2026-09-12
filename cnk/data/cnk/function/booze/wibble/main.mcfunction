execute store result score $chance cnk.dummy run random value 0..3
execute unless score $chance cnk.dummy matches 0 run return fail

execute if entity @s[tag=cnk.wibbled] run return run function cnk:booze/wibble/reset
execute if entity @s[tag=!cnk.wibbled] run return run function cnk:booze/wibble/move