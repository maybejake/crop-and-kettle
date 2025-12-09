# value map:
# 9901 = previous page
# 9902 = next page
# 9911 = reference 1
# 9912 = reference 2
# 9913 = reference 3
# 9914 = reference 4
# 9915 = reference 5
# 9921 = front bookmark
# 9922 = staple bookmark
# 9923 = snack bookmark
# 9924 = light bookmark
# 9925 = hearty bookmark
# 9926 = feast bookmark
# 9927 = dessert bookmark
# 9991 = close dialog

execute if score @s cnk.cookbook_buttons matches 9901 run function cnk:cookbook/buttons/previous_page
execute if score @s cnk.cookbook_buttons matches 9902 run function cnk:cookbook/buttons/next_page

execute if score @s cnk.cookbook_buttons matches 9911 run function cnk:cookbook/buttons/reference_1
execute if score @s cnk.cookbook_buttons matches 9912 run function cnk:cookbook/buttons/reference_2
execute if score @s cnk.cookbook_buttons matches 9913 run function cnk:cookbook/buttons/reference_3
execute if score @s cnk.cookbook_buttons matches 9914 run function cnk:cookbook/buttons/reference_4
execute if score @s cnk.cookbook_buttons matches 9915 run function cnk:cookbook/buttons/reference_5

execute if score @s cnk.cookbook_buttons matches 9921 run function cnk:cookbook/buttons/front_bookmark
execute if score @s cnk.cookbook_buttons matches 9922 run function cnk:cookbook/buttons/staple_bookmark
execute if score @s cnk.cookbook_buttons matches 9923 run function cnk:cookbook/buttons/snack_bookmark
execute if score @s cnk.cookbook_buttons matches 9924 run function cnk:cookbook/buttons/light_bookmark
execute if score @s cnk.cookbook_buttons matches 9925 run function cnk:cookbook/buttons/hearty_bookmark
execute if score @s cnk.cookbook_buttons matches 9926 run function cnk:cookbook/buttons/feast_bookmark
execute if score @s cnk.cookbook_buttons matches 9927 run function cnk:cookbook/buttons/dessert_bookmark

execute if score @s cnk.cookbook_buttons matches 9991 run function cnk:cookbook/buttons/close

scoreboard players reset @s cnk.cookbook_buttons
scoreboard players enable @s cnk.cookbook_buttons