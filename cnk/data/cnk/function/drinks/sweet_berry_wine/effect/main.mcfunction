advancement revoke @s only cnk:wine/consume_sweet_berry

execute if data storage cnk:admin settings{sweet_berry_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.duration set compute default integer cnk:drinks/sweet_berry_wine/duration

function cnk:drinks/sweet_berry_wine/effect/effect with storage cnk:temp wine