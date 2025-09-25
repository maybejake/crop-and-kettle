# this function is called once the player uses the knife on the cutting board! nice and simple, just spawns the output item, and handles tidy up
loot spawn ~ ~-0.3 ~ loot cnkea:other/oak_log

# this function MUST be called, tidies up the item and triggers sound and durability changes
function cnk:cutting_board/cut/finish