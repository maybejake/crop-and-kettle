execute if entity @s[tag=cnk.cooking_pot] run return run function cnk:cooking_pot/tick
execute if entity @s[tag=cnk.cutting_board] run return run function cnk:cutting_board/tick
execute if entity @s[tag=cnk.mixing_bowl] run return run function cnk:mixing_bowl/tick
execute if entity @s[tag=cnk.faucet] run return run function cnk:faucet/tick
execute if entity @s[tag=cnk.distiller] run return run function cnk:distiller/tick
execute if entity @s[tag=cnk.basin] run return run function cnk:basin/tick
execute if entity @s[tag=cnk.calendar] run return run function cnk:calendar/tick
execute if entity @s[tag=cnk.mr_kettle] run return run function cnk:mr_kettle/tick
execute if entity @s[tag=cnk.candy_bowl] run return run function cnk:candy_bowl/tick
execute if entity @s[tag=cnk.scarecrow] run return run function cnk:scarecrow/tick
execute if entity @s[tag=cnk.cornucopia] run return run function cnk:cornucopia/tick
execute if entity @s[tag=cnk.pail] run return run function cnk:pail/tick
execute if entity @s[tag=cnk.plate] run return run function cnk:plate/tick
execute if entity @s[tag=cnk.wreath] run return run function cnk:wreath/tick
execute if entity @s[tag=cnk.gift] run return run function cnk:gift/tick
execute if entity @s[tag=cnk.booze_head] run return run function cnk:booze_head/tick
execute if entity @s[tag=cnk.lectern_book] run return run function cnk:lectern/tick
execute if entity @s[tag=cnk.hollow_vessel] run return run function cnk:hollow_vessel/tick
execute if entity @s[tag=cnk.wine_rack] rotated as @s positioned ^ ^ ^-0.51 run return run function cnk:wine_rack/tick

function #cnk:addons/blocks/tick