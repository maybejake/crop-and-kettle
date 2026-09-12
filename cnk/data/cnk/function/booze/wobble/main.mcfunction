execute store result score $chance cnk.dummy run random value 0..4
execute unless score $chance cnk.dummy matches 0 run return fail

execute if entity @s[tag=cnk.wobbled] run return run function cnk:booze/wobble/reset
execute if entity @s[tag=!cnk.wobbled] run return run function cnk:booze/wobble/move