# 2 lunar cycles (5h 20m)
scoreboard players set $year cnk.dummy 384000

scoreboard players set $day cnk.dummy 24000

scoreboard players operation $current_year cnk.dummy = $time cnk.dummy
execute store result storage cnk:temp time.year int 1 run scoreboard players operation $current_year cnk.dummy /= $year cnk.dummy

scoreboard players operation $current_day cnk.dummy = $time cnk.dummy
scoreboard players operation $current_day cnk.dummy %= $year cnk.dummy
execute store result storage cnk:temp time.day int 1 run scoreboard players operation $current_day cnk.dummy /= $day cnk.dummy