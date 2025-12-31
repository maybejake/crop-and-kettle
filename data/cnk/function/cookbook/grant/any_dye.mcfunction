function cnk:cookbook/database/set/main {flag:"item.cnk.any_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.white_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.light_gray_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.gray_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.black_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.brown_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.red_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.orange_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.yellow_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.lime_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.green_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.cyan_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.light_blue_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.blue_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.purple_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.magenta_dye"}
function cnk:cookbook/database/set/main {flag:"item.minecraft.pink_dye"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only cnk:cookbook/any_dye/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/any_dye/toast
