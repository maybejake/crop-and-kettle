advancement revoke @s only cnk:feast
advancement grant @s only cnk:visible/feast

tag @s add cnk.feasting

#cornucopia effect
execute at @s if entity @n[tag=cnk.cornucopia,distance=..16] run return run effect give @s minecraft:saturation 4800 0 true

# picnic basket effect
execute at @s if entity @n[tag=cnk.picnic_basket,distance=..16] run return run effect give @s minecraft:saturation 4800 0 true

#normal duration
effect give @s minecraft:saturation 3600 0 true