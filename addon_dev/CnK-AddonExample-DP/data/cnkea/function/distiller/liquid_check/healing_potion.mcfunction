# checks the basin to see if the liquid matches the one about to be crafted, or if it is empty
# you need to make one of these for every new liquid you add
execute if data storage cnk:temp distiller.basin{liquid:"healing_potion"} run return 1
execute if data storage cnk:temp distiller.basin{liquid:""} run return 1
return fail