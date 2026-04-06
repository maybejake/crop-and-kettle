#> cnk.iris:setup/load
#
# Defines scoreboard objectives and sets up storage if it has not already been done
#
# @handles #minecraft:load

# IDE storage definitions for Spyglass
#define storage cnk.iris:data
#define storage cnk.iris:args
#define storage cnk.iris:settings
#define storage cnk.iris:output

# Setup scoreboard and storage
function cnk.iris:setup/scoreboard
execute unless data storage cnk.iris:data is_setup run function cnk.iris:setup/storage
