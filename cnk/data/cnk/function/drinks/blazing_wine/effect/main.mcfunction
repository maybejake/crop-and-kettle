advancement revoke @s only cnk:wine/consume_blazing

execute if data storage cnk:admin settings{blazing_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.duration set compute default integer cnk:drinks/blazing_wine/duration

function cnk:drinks/blazing_wine/effect/effect with storage cnk:temp wine