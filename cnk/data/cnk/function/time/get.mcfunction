execute store result storage cnk:temp time.time int 1 run time query gametime
execute store result score $day cnk.dummy run data modify storage cnk:temp time.day set compute default integer cnk:time/get_day
execute store result score $year cnk.dummy run data modify storage cnk:temp time.year set compute default integer cnk:time/get_year