advancement revoke @s only cnk:wine/consume_heroic

execute if data storage cnk:admin settings{heroic_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.duration set compute default integer cnk:drinks/heroic_wine/duration

function cnk:drinks/heroic_wine/effect/effect with storage cnk:temp wine