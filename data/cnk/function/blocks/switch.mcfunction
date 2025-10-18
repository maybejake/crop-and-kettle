function cnk:blocks/rotation

execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"cooking_pot"} run return run function cnk:cooking_pot/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"basin"} run return run function cnk:basin/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"calendar"} run return run function cnk:calendar/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"cutting_board"} run return run function cnk:cutting_board/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"distiller"} run return run function cnk:distiller/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"faucet"} run return run function cnk:faucet/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"mixing_bowl"} run return run function cnk:mixing_bowl/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"wine_rack"} run return run function cnk:wine_rack/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"candy_bowl"} run return run function cnk:candy_bowl/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"scarecrow"} run return run function cnk:scarecrow/place
execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block{type:"cornucopia"} run return run function cnk:cornucopia/place