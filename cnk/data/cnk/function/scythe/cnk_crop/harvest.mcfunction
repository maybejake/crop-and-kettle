# has multiple possible triggers, try both
execute as @p[tag=cnk.scythe_use,distance=..20] run return run scoreboard players add @s cnk.statistic.crops_harvested 1
execute as @p[tag=cnk.interact_crop,distance=..20] run return run scoreboard players add @s cnk.statistic.crops_harvested 1