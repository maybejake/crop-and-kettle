execute if entity @s[type=minecraft:cave_spider] run function cnk.iris:get_hitbox/entity/shape_groups/cave_spider
execute if entity @s[type=#cnk.iris:shape_groups/chest_minecart] run function cnk.iris:get_hitbox/entity/shape_groups/chest_minecart
execute if entity @s[type=minecraft:chicken] run function cnk.iris:get_hitbox/entity/shape_groups/chicken
execute if entity @s[type=minecraft:cod] run function cnk.iris:get_hitbox/entity/shape_groups/cod
execute if entity @s[type=#cnk.iris:shape_groups/cow] run function cnk.iris:get_hitbox/entity/shape_groups/cow
execute if entity @s[type=minecraft:creaking] run function cnk.iris:get_hitbox/entity/shape_groups/creaking
execute if entity @s[type=minecraft:creeper] run function cnk.iris:get_hitbox/entity/shape_groups/creeper
execute if entity @s[type=minecraft:dolphin] run function cnk.iris:get_hitbox/entity/shape_groups/dolphin
execute if entity @s[type=minecraft:donkey] run function cnk.iris:get_hitbox/entity/shape_groups/donkey
execute if entity @s[type=#cnk.iris:shape_groups/dragon_fireball] run function cnk.iris:get_hitbox/entity/shape_groups/dragon_fireball
execute if entity @s[type=#cnk.iris:shape_groups/drowned] run function cnk.iris:get_hitbox/entity/shape_groups/drowned
execute if entity @s[type=#cnk.iris:shape_groups/egg] run function cnk.iris:get_hitbox/entity/shape_groups/egg
execute if entity @s[type=minecraft:elder_guardian] run function cnk.iris:get_hitbox/entity/shape_groups/elder_guardian

# broken out into its own function for pre-1.21.9 compat
function cnk.iris:get_hitbox/entity/shape_groups/copper_golem