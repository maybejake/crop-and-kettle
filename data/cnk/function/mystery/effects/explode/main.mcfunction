advancement revoke @s only cnk:bomb_pie

execute at @s run playsound entity.tnt.primed neutral @s ~ ~ ~ 1 1

tag @s add cnk.these_were_made_in_a_factory
schedule function cnk:mystery/effects/explode/a_bomb_factory 60t
# they're bombs