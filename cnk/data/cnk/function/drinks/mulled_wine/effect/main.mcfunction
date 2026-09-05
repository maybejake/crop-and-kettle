advancement revoke @s only cnk:wine/consume_mulled

execute if data storage cnk:admin settings{mulled_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.duration set compute default integer cnk:drinks/mulled_wine/duration
data modify storage cnk:temp wine.potency set compute default integer cnk:drinks/mulled_wine/potency

function cnk:drinks/mulled_wine/effect/effect with storage cnk:temp wine