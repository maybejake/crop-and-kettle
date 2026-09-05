advancement revoke @s only cnk:wine/consume_gleaming

execute if data storage cnk:admin settings{gleaming_wine_disabled:true} run return fail

function cnk:drinks/aging_wine
data modify storage cnk:temp wine.aborsption_duration set compute default integer cnk:drinks/gleaming_wine/absorption/duration
data modify storage cnk:temp wine.aborsption_potency set compute default integer cnk:drinks/gleaming_wine/absorption/potency
data modify storage cnk:temp wine.regeneration_duration set compute default integer cnk:drinks/gleaming_wine/regeneration/duration

function cnk:drinks/gleaming_wine/effect/effect with storage cnk:temp wine