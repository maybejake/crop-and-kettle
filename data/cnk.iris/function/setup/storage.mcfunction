#> cnk.iris:setup/storage
#
# Sets up storage for Iris
#
# @within cnk.iris:setup/load

data merge storage cnk.iris:data {is_setup: 1b}

# Set default settings
data merge storage cnk.iris:settings {\
    TargetEntities: false,\
    MaxRecursionDepth: 16,\
    Blacklist: "#cnk.iris:shape_groups/air"\
}
