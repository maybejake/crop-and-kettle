data remove storage cnk:temp insert_loot.available_slots

execute unless items block ~ ~ ~ container.0 * run data modify storage cnk:temp insert_loot.available_slots append value 0
execute unless items block ~ ~ ~ container.1 * run data modify storage cnk:temp insert_loot.available_slots append value 1
execute unless items block ~ ~ ~ container.2 * run data modify storage cnk:temp insert_loot.available_slots append value 2
execute unless items block ~ ~ ~ container.3 * run data modify storage cnk:temp insert_loot.available_slots append value 3
execute unless items block ~ ~ ~ container.4 * run data modify storage cnk:temp insert_loot.available_slots append value 4
execute unless items block ~ ~ ~ container.5 * run data modify storage cnk:temp insert_loot.available_slots append value 5
execute unless items block ~ ~ ~ container.6 * run data modify storage cnk:temp insert_loot.available_slots append value 6
execute unless items block ~ ~ ~ container.7 * run data modify storage cnk:temp insert_loot.available_slots append value 7
execute unless items block ~ ~ ~ container.8 * run data modify storage cnk:temp insert_loot.available_slots append value 8
execute unless items block ~ ~ ~ container.9 * run data modify storage cnk:temp insert_loot.available_slots append value 9
execute unless items block ~ ~ ~ container.10 * run data modify storage cnk:temp insert_loot.available_slots append value 10
execute unless items block ~ ~ ~ container.11 * run data modify storage cnk:temp insert_loot.available_slots append value 11
execute unless items block ~ ~ ~ container.12 * run data modify storage cnk:temp insert_loot.available_slots append value 12
execute unless items block ~ ~ ~ container.13 * run data modify storage cnk:temp insert_loot.available_slots append value 13
execute unless items block ~ ~ ~ container.14 * run data modify storage cnk:temp insert_loot.available_slots append value 14
execute unless items block ~ ~ ~ container.15 * run data modify storage cnk:temp insert_loot.available_slots append value 15
execute unless items block ~ ~ ~ container.16 * run data modify storage cnk:temp insert_loot.available_slots append value 16
execute unless items block ~ ~ ~ container.17 * run data modify storage cnk:temp insert_loot.available_slots append value 17
execute unless items block ~ ~ ~ container.18 * run data modify storage cnk:temp insert_loot.available_slots append value 18
execute unless items block ~ ~ ~ container.19 * run data modify storage cnk:temp insert_loot.available_slots append value 19
execute unless items block ~ ~ ~ container.20 * run data modify storage cnk:temp insert_loot.available_slots append value 20
execute unless items block ~ ~ ~ container.21 * run data modify storage cnk:temp insert_loot.available_slots append value 21
execute unless items block ~ ~ ~ container.22 * run data modify storage cnk:temp insert_loot.available_slots append value 22
execute unless items block ~ ~ ~ container.23 * run data modify storage cnk:temp insert_loot.available_slots append value 23
execute unless items block ~ ~ ~ container.24 * run data modify storage cnk:temp insert_loot.available_slots append value 24
execute unless items block ~ ~ ~ container.25 * run data modify storage cnk:temp insert_loot.available_slots append value 25
execute unless items block ~ ~ ~ container.26 * run data modify storage cnk:temp insert_loot.available_slots append value 26

execute store result storage cnk:temp insert_loot.slot_count int 1 run data get storage cnk:temp insert_loot.available_slots

# chest full, just pick any slot
execute if data storage cnk:temp insert_loot{slot_count:0} run data modify storage cnk:temp insert_loot.available_slots set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]
execute if data storage cnk:temp insert_loot{slot_count:0} run data modify storage cnk:temp insert_loot.slot_count set value 25
