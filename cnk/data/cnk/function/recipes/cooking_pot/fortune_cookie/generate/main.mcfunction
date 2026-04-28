data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.1"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.2"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.3"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.4"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.5"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.6"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.7"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.8"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.9"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.10"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.11"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.12"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.13"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.14"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.15"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.16"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.17"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.18"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.19"}
data modify storage cnk:temp fortune_cookie.fortunes append value {translate:"item.cnk.fortune_cookie.fortune.20"}

# addon fortunes
function #cnk:addons/fortune_cookie/fortunes

execute store result score $max_index cnk.dummy run data get storage cnk:temp fortune_cookie.fortunes
scoreboard players remove $max_index cnk.dummy 1
execute store result storage cnk:temp fortune_cookie.max_index int 1 run scoreboard players get $max_index cnk.dummy

function cnk:recipes/cooking_pot/fortune_cookie/generate/random with storage cnk:temp fortune_cookie
function cnk:recipes/cooking_pot/fortune_cookie/generate/get_fortune with storage cnk:temp fortune_cookie