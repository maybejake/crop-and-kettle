advancement revoke @s only cnk:distiller_book_loot

data modify storage cnk:temp insert_loot merge value {loot_table:"cnk:other/distiller_book",count:1}

function cnk:insert_loot/main
