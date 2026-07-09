execute if score $mix_time cnk.dummy matches 1 run data merge entity @s[tag=cnk.mixing_bowl_spoon] {teleport_duration:6,interpolation_duration:6}

execute if score $mix_time cnk.dummy matches 1 run rotate @s ~120 ~
execute if score $mix_time cnk.dummy matches 4 run rotate @s ~120 ~
execute if score $mix_time cnk.dummy matches 7 run rotate @s ~120 ~

data modify storage cnk:temp mixing_bowl.id set from entity @s item.id
data modify storage cnk:temp mixing_bowl.components set value {}
data modify storage cnk:temp mixing_bowl.components set from entity @s item.components
function cnk:mixing_bowl/mix/particle with storage cnk:temp mixing_bowl