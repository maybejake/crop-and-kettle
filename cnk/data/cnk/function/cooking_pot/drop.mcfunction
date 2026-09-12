execute if entity @s[tag=cnk.fizz_oven] run return run loot spawn ~ ~ ~ loot cnk:tools/fizz_oven
execute if entity @s[tag=cnk.witch_cauldron] run return run loot spawn ~ ~ ~ loot cnk:zzz_secret/witch_cauldron
execute if entity @s[tag=cnk.panless_stove] run return run loot spawn ~ ~ ~ loot cnk:zzz_secret/panless_stove
execute if entity @s[tag=cnk.stove] run return run loot spawn ~ ~ ~ loot cnk:tools/stove
execute if function #cnk:addons/cooking_pot/variants/drop run return 1
loot spawn ~ ~ ~ loot cnk:tools/cooking_pot