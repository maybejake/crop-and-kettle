#> cnk.iris:raycast/test_for_entity
#
# @within cnk.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if an entity was hit, 0 otherwise

execute unless data storage cnk.iris:settings {TargetEntities: true} run return fail
execute align xyz unless entity @e[type=!#cnk.iris:ignore, tag=!cnk.iris.ignore, dx=0, dy=0, dz=0, tag=!cnk.iris.executing] run return fail
execute align xyz as @e[type=!#cnk.iris:ignore, tag=!cnk.iris.ignore, dx=0, dy=0, dz=0, tag=!cnk.iris.executing] run function cnk.iris:get_hitbox/entity
return run function cnk.iris:raycast/check_intersection/loop
