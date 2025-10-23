$data modify storage cnk:temp register.temp_font set value "$(font)"
$execute if data storage cnk:temp key_map.$(key) run data modify storage cnk:temp register.temp_font set from storage cnk:temp key_map.$(key)
$data modify storage cnk:temp key_map.$(key) set from storage cnk:temp register.temp_font