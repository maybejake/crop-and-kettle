scoreboard players set $wine_rack_broken cnk.dummy 0
function cnk:cleanup/wine_rack/cleanup
execute if score $wine_rack_broken cnk.dummy matches 1 run kill @s