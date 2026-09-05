advancement revoke @s only cnk:wine/consume_cider

execute if data storage cnk:admin settings{apple_cider_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.duration set compute default integer cnk:drinks/apple_cider/duration
data modify storage cnk:temp wine.potency set compute default integer cnk:drinks/apple_cider/potency

function cnk:drinks/apple_cider/effect/effect with storage cnk:temp wine