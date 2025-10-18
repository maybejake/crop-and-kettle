#> cnk.iris:raycast/test_for_block
#
# @within cnk.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if a block was hit, 0 otherwise

# Check if the current block is loaded
execute store success score $loaded cnk.iris if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ masked
execute if score $loaded cnk.iris matches 0 run return fail

# Check if the current block is blacklisted, or explicitly not whitelisted
execute if data storage cnk.iris:settings Whitelist run data modify storage cnk.iris:args id set from storage cnk.iris:settings Whitelist
execute if data storage cnk.iris:settings Whitelist store success score $is_whitelisted cnk.iris run function cnk.iris:raycast/macro_functions/block_id_test with storage cnk.iris:args
execute if data storage cnk.iris:settings Whitelist unless score $is_whitelisted cnk.iris matches 1 run return fail
execute if data storage cnk.iris:settings Blacklist run data modify storage cnk.iris:args id set from storage cnk.iris:settings Blacklist
execute if data storage cnk.iris:settings Blacklist store success score $is_blacklisted cnk.iris run function cnk.iris:raycast/macro_functions/block_id_test with storage cnk.iris:args
execute if data storage cnk.iris:settings Blacklist if score $is_blacklisted cnk.iris matches 1 run return fail

# See if the block is hit
function cnk.iris:get_hitbox/block
execute unless data storage cnk.iris:data Shape[0] run return fail
return run function cnk.iris:raycast/check_intersection/loop
