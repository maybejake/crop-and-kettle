advancement revoke @s only cnk:wine/consume_breezing

execute if data storage cnk:admin settings{breezing_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.duration set compute default integer cnk:drinks/breezing_wine/duration
data modify storage cnk:temp wine.potency set compute default integer cnk:drinks/breezing_wine/potency

function cnk:drinks/breezing_wine/effect/effect with storage cnk:temp wine