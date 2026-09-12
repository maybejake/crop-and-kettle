#spin
rotate @s ~10 ~

#get data
data modify storage cnk:temp booze.bottle_transformation set from entity @s transformation

function cnk:booze/wibble/main
function cnk:booze/wobble/main

#set data
data modify entity @s transformation set from storage cnk:temp booze.bottle_transformation