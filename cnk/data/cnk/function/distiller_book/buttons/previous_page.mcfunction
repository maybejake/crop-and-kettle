scoreboard players remove @s cnk.distiller_book_current_page 1
execute at @s if score @s cnk.distiller_book_current_page matches 1 run playsound minecraft:item.book.put player @s ~ ~ ~ 1 1
function cnk:distiller_book/open
