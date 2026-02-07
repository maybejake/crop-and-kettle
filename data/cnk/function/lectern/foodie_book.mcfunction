data modify storage cnk:temp lectern.model set value "cnk:lectern_foodie_book"
execute unless function cnk:lectern/rotation run return fail
function cnk:lectern/place with storage cnk:temp lectern