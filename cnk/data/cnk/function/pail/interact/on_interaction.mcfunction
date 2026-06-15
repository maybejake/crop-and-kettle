execute on target unless entity @s[tag=cnk.interact_pail] run return fail

data remove entity @s interaction
execute on vehicle at @s run function cnk:pail/interact/on_display

#addon support
function #cnk:addons/pail/interact