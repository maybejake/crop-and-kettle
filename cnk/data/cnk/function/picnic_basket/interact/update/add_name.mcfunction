# setup lore entry
data modify storage cnk:temp picnic_basket.update.lore_entry set value {translate:"container.cnk.picnic_basket.itemCount", with:[], color:"white", italic:false}

# get name
function cnk:picnic_basket/interact/update/get_name
execute unless data storage cnk:temp picnic_basket.update.item_name{} run function cnk:picnic_basket/interact/update/sanitise

# append name and count
data modify storage cnk:temp picnic_basket.update.lore_entry.with append from storage cnk:temp picnic_basket.update.item_name
data modify storage cnk:temp picnic_basket.update.lore_entry.with append from storage cnk:temp picnic_basket.update.item.count

# append to lore
data modify storage cnk:temp picnic_basket.update.lore append from storage cnk:temp picnic_basket.update.lore_entry