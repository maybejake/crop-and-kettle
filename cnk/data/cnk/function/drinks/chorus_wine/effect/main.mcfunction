advancement revoke @s only cnk:wine/consume_chorus

execute if data storage cnk:admin settings{chorus_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.max_distance set compute default integer cnk:drinks/chorus_wine/max_distance
data modify storage cnk:temp wine.min_distance set compute default integer cnk:drinks/chorus_wine/min_distance
function cnk:drinks/chorus_wine/effect/teleport with storage cnk:temp wine