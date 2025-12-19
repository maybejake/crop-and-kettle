# summon THE BOY
execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run particle minecraft:firework ~ ~0.25 ~ 0 0 0 0.1 100 force
execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run loot spawn ~ ~ ~ loot cnk:zzz_secret/mr_kettle
execute at @e[type=minecraft:item,tag=cnk.meat_guide_ritual] run playsound cnk:item.mr_kettle.squeak block @a ~ ~ ~ 1 1

# kill the pretender
kill @e[type=minecraft:item,tag=cnk.meat_guide_ritual]

tag @e[type=minecraft:marker,tag=cnk.shrine_marker_ritual] remove cnk.shrine_marker_ritual

weather clear