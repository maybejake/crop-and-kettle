data modify storage cnk:temp villager set from entity @s

# store the butcher level, if 0 then not a butcher
scoreboard players set $butcher_level cnk.dummy 0
execute if data storage cnk:temp villager.VillagerData{profession:"minecraft:butcher"} store result score $butcher_level cnk.dummy run data get storage cnk:temp villager.VillagerData.level

# not marked before and is butcher, append a secret recipe
execute if entity @s[tag=!cnk.butcher_villager] if score $butcher_level cnk.dummy matches 1.. run return run function cnk:villager/butcher

# used to be a butcher, isn't anymore
execute if entity @s[tag=cnk.butcher_villager] if score $butcher_level cnk.dummy matches 0 run tag @s remove cnk.butcher_villager

# not butcher villager, check for xp and mark if previously traded with
execute store result score $villager_xp cnk.dummy run data get storage cnk:temp villager.Xp
execute if score $villager_xp cnk.dummy matches 1.. run tag @s add cnk.checked_villager