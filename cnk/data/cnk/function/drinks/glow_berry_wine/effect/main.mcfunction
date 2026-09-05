advancement revoke @s only cnk:wine/consume_glow_berry

execute if data storage cnk:admin settings{glow_berry_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.range set compute default integer cnk:drinks/glow_berry_wine/range

function cnk:drinks/glow_berry_wine/effect/effect with storage cnk:temp wine