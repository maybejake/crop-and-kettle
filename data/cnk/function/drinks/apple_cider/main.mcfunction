execute store result score $time cnk.dummy run time query gametime
execute store result storage cnk:temp time.gametime int 1 run time query gametime
function cnk:time/get

function cnk:drinks/apple_cider/macro with storage cnk:temp time