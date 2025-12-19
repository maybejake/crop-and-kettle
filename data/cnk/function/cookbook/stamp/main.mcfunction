data modify storage cnk:temp cookbook.data.stamp set value "book.cnk.stamp.none"

execute if data storage cnk:temp cookbook.current_page.stamp.text run return run function cnk:cookbook/stamp/build with storage cnk:temp cookbook.current_page.stamp
execute if data storage cnk:temp cookbook.current_page.stamp run data modify storage cnk:temp cookbook.data.stamp set from storage cnk:temp cookbook.current_page.stamp.icon