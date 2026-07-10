# build a dang stamp
execute unless data storage cnk:temp cookbook.current_page.stamp.font run data modify storage cnk:temp cookbook.current_page.stamp.font set value "cnk.book:base"
execute if data storage cnk:temp cookbook.current_page.stamp.text run return run function cnk:cookbook/stamp/build with storage cnk:temp cookbook.current_page.stamp
function cnk:cookbook/stamp/build_no_text with storage cnk:temp cookbook.current_page.stamp