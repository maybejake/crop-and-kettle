# check if broken
execute unless block ~ ~ ~ minecraft:mangrove_propagule[waterlogged=true] run return fail
execute unless block ~ ~1 ~ minecraft:light[level=0] run return fail

# grow
execute unless block ~ ~ ~ minecraft:mangrove_propagule[stage=1,waterlogged=true] run function cnk:crops/tick/propagule/grow

# success
return 1