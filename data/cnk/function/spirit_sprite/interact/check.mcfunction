execute if score $interact_sprite_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.interact_sprite] run scoreboard players set $interact_sprite_check cnk.dummy 1
execute if score $interact_sprite_check cnk.dummy matches 1 run function cnk:spirit_sprite/interact/found