execute store result score @s cnk.max_age run compute default integer cnk:crop_max_age/rice
execute store result score @s cnk.crop_version run compute default integer cnk:crop_version
scoreboard players set @s cnk.age 0

function cnk:crops/rice/tick