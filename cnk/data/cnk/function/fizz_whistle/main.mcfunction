advancement revoke @s only cnk:whistle

playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 0.1
playsound minecraft:entity.frog.ambient player @a ~ ~ ~ 1 2

execute summon minecraft:marker run function cnk:fizz_whistle/setup

# prevent consumption
execute if predicate cnk:fizz_whistle/mainhand run return run function cnk:infinite/mainhand
execute if predicate cnk:fizz_whistle/offhand run function cnk:infinite/offhand