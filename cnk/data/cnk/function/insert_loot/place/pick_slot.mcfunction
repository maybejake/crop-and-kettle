$data modify storage cnk:temp insert_loot.selected_slot set from storage cnk:temp insert_loot.available_slots[$(index)]
$data remove storage cnk:temp insert_loot.available_slots[$(index)]
