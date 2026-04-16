#defaults
data modify storage cnk:temp admin_panel set value { \
    dynamic_command_feedback: false, \
    apple_cider_disabled: false, \
    blazing_wine_disabled: false, \
    blessing_wine_disabled: false, \
    breezing_wine_disabled: false, \
    chorus_wine_disabled: false, \
    creeping_wine_disabled: false, \
    diving_wine_disabled: false, \
    gleaming_wine_disabled: false, \
    glow_berry_wine_disabled: false, \
    grape_wine_disabled: false, \
    heroic_wine_disabled: false, \
    mulled_wine_disabled: false, \
    prospecting_wine_disabled: false, \
    sweet_berry_wine_disabled: false, \
    gift_box_disabled: false \
}

#dynamic command feedback stuff
execute if function dcf:is_enabled run data modify storage cnk:temp admin_panel.dynamic_command_feedback set value true

#year stuff
execute store result storage cnk:temp admin_panel.days_in_a_year int 1 run scoreboard players get $days_in_a_year cnk.dummy

#fizz stuff
execute store result storage cnk:temp admin_panel.trade_reset_time int 1 run scoreboard players get $trade_reset_time cnk.dummy

#wine stuff
execute if data storage cnk:admin settings{apple_cider_disabled:true} run data modify storage cnk:temp admin_panel.apple_cider_disabled set value true
execute if data storage cnk:admin settings{blazing_wine_disabled:true} run data modify storage cnk:temp admin_panel.blazing_wine_disabled set value true
execute if data storage cnk:admin settings{blessing_wine_disabled:true} run data modify storage cnk:temp admin_panel.blessing_wine_disabled set value true
execute if data storage cnk:admin settings{breezing_wine_disabled:true} run data modify storage cnk:temp admin_panel.breezing_wine_disabled set value true
execute if data storage cnk:admin settings{chorus_wine_disabled:true} run data modify storage cnk:temp admin_panel.chorus_wine_disabled set value true
execute if data storage cnk:admin settings{creeping_wine_disabled:true} run data modify storage cnk:temp admin_panel.creeping_wine_disabled set value true
execute if data storage cnk:admin settings{diving_wine_disabled:true} run data modify storage cnk:temp admin_panel.diving_wine_disabled set value true
execute if data storage cnk:admin settings{gleaming_wine_disabled:true} run data modify storage cnk:temp admin_panel.gleaming_wine_disabled set value true
execute if data storage cnk:admin settings{glow_berry_wine_disabled:true} run data modify storage cnk:temp admin_panel.glow_berry_wine_disabled set value true
execute if data storage cnk:admin settings{grape_wine_disabled:true} run data modify storage cnk:temp admin_panel.grape_wine_disabled set value true
execute if data storage cnk:admin settings{heroic_wine_disabled:true} run data modify storage cnk:temp admin_panel.heroic_wine_disabled set value true
execute if data storage cnk:admin settings{mulled_wine_disabled:true} run data modify storage cnk:temp admin_panel.mulled_wine_disabled set value true
execute if data storage cnk:admin settings{prospecting_wine_disabled:true} run data modify storage cnk:temp admin_panel.prospecting_wine_disabled set value true
execute if data storage cnk:admin settings{sweet_berry_wine_disabled:true} run data modify storage cnk:temp admin_panel.sweet_berry_wine_disabled set value true
execute if data storage cnk:admin settings{gift_box_disabled:true} run data modify storage cnk:temp admin_panel.gift_box_disabled set value true

execute if data storage cnk:admin settings

#have to pass in as a macro otherwise it tries to resolve it
data modify storage cnk:temp admin_panel.macros set value " \
    dynamic_command_feedback:$(dynamic_command_feedback), \
    days_in_a_year:$(days_in_a_year), \
    apple_cider_disabled:$(apple_cider_disabled), \
    blazing_wine_disabled:$(blazing_wine_disabled), \
    blessing_wine_disabled:$(blessing_wine_disabled), \
    breezing_wine_disabled:$(breezing_wine_disabled), \
    chorus_wine_disabled:$(chorus_wine_disabled), \
    creeping_wine_disabled:$(creeping_wine_disabled), \
    diving_wine_disabled:$(diving_wine_disabled), \
    gleaming_wine_disabled:$(gleaming_wine_disabled), \
    glow_berry_wine_disabled:$(glow_berry_wine_disabled), \
    grape_wine_disabled:$(grape_wine_disabled), \
    heroic_wine_disabled:$(heroic_wine_disabled), \
    mulled_wine_disabled:$(mulled_wine_disabled), \
    prospecting_wine_disabled:$(prospecting_wine_disabled), \
    sweet_berry_wine_disabled:$(sweet_berry_wine_disabled), \
    gift_box_disabled:$(gift_box_disabled), \
    trade_reset_time:$(trade_reset_time) \
"

function cnk:admin_panel/dialog with storage cnk:temp admin_panel