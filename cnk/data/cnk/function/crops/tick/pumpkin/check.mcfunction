# check if broken
execute unless block ~ ~ ~ minecraft:pumpkin_stem run return fail
execute unless block ~ ~1 ~ minecraft:air run return fail

# grow
execute unless block ~ ~ ~ minecraft:pumpkin_stem[age=0] run function cnk:crops/tick/pumpkin/grow

# success
return 1