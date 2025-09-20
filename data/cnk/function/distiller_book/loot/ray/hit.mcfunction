execute store result score $book_chance cnk.dummy run random value 0..1
execute if score $book_chance cnk.dummy matches 0 run return fail

execute store result storage cnk:temp slot int 1 run random value 0..26
function cnk:distiller_book/loot/ray/modify with storage cnk:temp