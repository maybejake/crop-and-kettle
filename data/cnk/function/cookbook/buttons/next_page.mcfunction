scoreboard players operation $current_page_temp cnk.dummy = @s cnk.cookbook_current_page
scoreboard players add $current_page_temp cnk.dummy 1
execute unless score $current_page_temp cnk.dummy >= $global_cookbook_page cnk.dummy run scoreboard players add @s cnk.cookbook_current_page 1
function cnk:cookbook/open