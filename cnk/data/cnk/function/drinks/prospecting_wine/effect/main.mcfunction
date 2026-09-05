advancement revoke @s only cnk:wine/consume_prospecting

execute if data storage cnk:admin settings{prospecting_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.duration set compute default integer cnk:drinks/prospecting_wine/duration
data modify storage cnk:temp wine.potency set compute default integer cnk:drinks/prospecting_wine/potency

function cnk:drinks/prospecting_wine/effect/effect with storage cnk:temp wine