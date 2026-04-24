advancement revoke @s only cnk:whistle

playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 0.1
playsound minecraft:entity.frog.ambient player @a ~ ~ ~ 1 2

execute summon minecraft:marker run function cnk:fizz_whistle/setup

tag @s add cnk.fizz_whistle_replace
schedule function cnk:fizz_whistle/replace 1t