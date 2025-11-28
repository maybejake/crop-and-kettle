function cnk:treat_basket/effects/doppelganger/get_name

function cnk:treat_basket/effects/doppelganger/summon with storage cnk:temp doppelganger

spreadplayers ~ ~ 8 8 true @n[tag=cnk.doppelganger]
rotate @n[tag=cnk.doppelganger] facing entity @s

execute at @n[tag=cnk.doppelganger] run playsound block.portal.trigger neutral @a ~ ~ ~ 0.5 1.5

schedule function cnk:treat_basket/effects/doppelganger/kill 60t