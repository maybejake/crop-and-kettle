# this handles any extra recipes for the cutting board!
# when added to the cutting board tag, recipes in this file will be used for cutting board crafting:
# - cnk:tags/function/addons/cutting_board

# check the item exists, run the recipe function if it does
execute if data storage cnk:temp cutting_board.item{id:"minecraft:oak_log"} run return run function cnkea:cutting_board/recipes/oak_log