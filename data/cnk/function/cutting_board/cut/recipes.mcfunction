execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}} run return run function cnk:recipes/cutting_board/noodles
execute if data storage cnk:temp cutting_board.item{id:"minecraft:porkchop"} run return run function cnk:recipes/cutting_board/pork_cutlets
execute if data storage cnk:temp cutting_board.item{id:"minecraft:beef"} run return run function cnk:recipes/cutting_board/beef_cutlets
execute if data storage cnk:temp cutting_board.item{id:"minecraft:chicken"} run return run function cnk:recipes/cutting_board/chicken_cutlets
execute if data storage cnk:temp cutting_board.item{id:"minecraft:acacia_log"} run return run function cnk:recipes/cutting_board/cinnamon
execute if data storage cnk:temp cutting_board.item{id:"minecraft:salmon"} run return run function cnk:recipes/cutting_board/salmon_fillets
execute if data storage cnk:temp cutting_board.item{id:"minecraft:cod"} run return run function cnk:recipes/cutting_board/cod_fillets
execute if data storage cnk:temp cutting_board.item{id:"minecraft:mutton"} run return run function cnk:recipes/cutting_board/mutton_cutlets
execute if data storage cnk:temp cutting_board.item{id:"minecraft:rabbit"} run return run function cnk:recipes/cutting_board/rabbit_cutlets
execute if entity @p[tag=cnk.interact_cutting_board,predicate=cnk:ritual_dagger,distance=..20] if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"mystery_meat"}}}}} run return run function cnk:recipes/cutting_board/meat_guide