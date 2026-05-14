function gu:convert with entity @p[tag=cnk.interact_mixing_bowl,distance=..20]
data modify entity @s data.cnk.last_interact_uuid set from storage gu:main out

function cnk:mixing_bowl/mix/get_items
function #cnk:recipes/mixing_bowl