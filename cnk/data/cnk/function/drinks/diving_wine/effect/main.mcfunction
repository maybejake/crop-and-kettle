advancement revoke @s only cnk:wine/consume_diving

execute if data storage cnk:admin settings{diving_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.duration set compute default integer cnk:drinks/diving_wine/duration

function cnk:drinks/diving_wine/effect/effect with storage cnk:temp wine