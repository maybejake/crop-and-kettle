execute store result storage cnk:temp picnic_basket.item_count int 1 run scoreboard players operation $temp_basket_count cnk.dummy -= $max_items cnk.dummy
function cnk:picnic_basket/insert/partial/macro with storage cnk:temp picnic_basket

execute store result storage cnk:temp picnic_basket.item.count int 1 run scoreboard players operation $item_count cnk.dummy -= $temp_basket_count cnk.dummy

function cnk:picnic_basket/insert/add