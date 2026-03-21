#dcf stuff
$function dcf:toggle {enabled:$(dynamic_command_feedback)b}

#year stuff
$scoreboard players set $days_in_a_year cnk.dummy $(days_in_a_year)

#wine stuff
$data modify storage cnk:admin settings.apple_cider_disabled set value $(apple_cider_disabled)b
$data modify storage cnk:admin settings.blazing_wine_disabled set value $(blazing_wine_disabled)b
$data modify storage cnk:admin settings.blessing_wine_disabled set value $(blessing_wine_disabled)b
$data modify storage cnk:admin settings.breezing_wine_disabled set value $(breezing_wine_disabled)b
$data modify storage cnk:admin settings.chorus_wine_disabled set value $(chorus_wine_disabled)b
$data modify storage cnk:admin settings.creeping_wine_disabled set value $(creeping_wine_disabled)b
$data modify storage cnk:admin settings.diving_wine_disabled set value $(diving_wine_disabled)b
$data modify storage cnk:admin settings.gleaming_wine_disabled set value $(gleaming_wine_disabled)b
$data modify storage cnk:admin settings.glow_berry_wine_disabled set value $(glow_berry_wine_disabled)b
$data modify storage cnk:admin settings.grape_wine_disabled set value $(grape_wine_disabled)b
$data modify storage cnk:admin settings.heroic_wine_disabled set value $(heroic_wine_disabled)b
$data modify storage cnk:admin settings.mulled_wine_disabled set value $(mulled_wine_disabled)b
$data modify storage cnk:admin settings.prospecting_wine_disabled set value $(prospecting_wine_disabled)b
$data modify storage cnk:admin settings.sweet_berry_wine_disabled set value $(sweet_berry_wine_disabled)b
$data modify storage cnk:admin settings.gift_box_disabled set value $(gift_box_disabled)b

function cnk:distiller_book/register_pages