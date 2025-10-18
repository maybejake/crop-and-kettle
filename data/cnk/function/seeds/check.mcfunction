#cooldown
execute store result score @s cnk.seed_cooldown run time query gametime
scoreboard players add @s cnk.seed_cooldown 5
schedule function cnk:seeds/cooldown 5t append

data remove storage cnk.iris:settings Callback
data merge storage cnk.iris:settings {TargetEntities:false,Whitelist:"minecraft:farmland",MaxRecursionDepth:16,Blacklist:"#cnk:cropcast"}

execute if items entity @s weapon.offhand minecraft:dried_kelp[minecraft:custom_data~{cnk:{seed:true}}] run data modify storage cnk:temp seeds.hand set value "offhand"
execute if items entity @s weapon.mainhand minecraft:dried_kelp[minecraft:custom_data~{cnk:{seed:true}}] run data modify storage cnk:temp seeds.hand set value "mainhand"

# if rice, whitelist water instead
function cnk:seeds/rice_check with storage cnk:temp seeds

execute store result score $max_distance cnk.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance cnk.dummy run function cnk.iris:get_target
execute if score $distance cnk.dummy <= $max_distance cnk.dummy at @n[type=minecraft:marker, tag=cnk.iris.targeted_block] positioned ~ ~1 ~ run function cnk:seeds/macro with storage cnk:temp seeds