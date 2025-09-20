execute store result score $time cnk.dummy run time query gametime
scoreboard players operation $time cnk.dummy -= @s cnk.wine_time

function cnk:time/get
execute store result score $year cnk.dummy run data get storage cnk:temp time.year
execute store result score $day cnk.dummy run data get storage cnk:temp time.day