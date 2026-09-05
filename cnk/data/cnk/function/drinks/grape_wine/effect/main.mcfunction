advancement revoke @s only cnk:wine/consume_grape

execute if data storage cnk:admin settings{grape_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.duration set compute default integer cnk:drinks/grape_wine/duration

function cnk:drinks/grape_wine/effect/effect with storage cnk:temp wine