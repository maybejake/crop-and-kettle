# check if broken
execute unless block ~ ~ ~ minecraft:wheat run return fail
execute unless block ~ ~1 ~ minecraft:air run return fail

# grow
execute unless block ~ ~ ~ minecraft:wheat[age=0] run function cnk:crops/tick/wheat/grow

# success
return 1