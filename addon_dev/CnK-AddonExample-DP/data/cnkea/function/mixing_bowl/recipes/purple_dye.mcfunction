# this function is called once mixing is complete! nice and simple, just spawns the output item, and handles tidy up
loot spawn ~ ~-0.3 ~ loot cnkea:other/purple_dye

# this function MUST be called, it locks the mixing bowl and starts the mixing process
function cnk:mixing_bowl/mix/clean_up