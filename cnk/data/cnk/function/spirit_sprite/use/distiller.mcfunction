execute unless score @s cnk.distill_timer matches 1.. run return fail

scoreboard players operation @s cnk.distill_goal = $gametime cnk.dummy
playsound cnk:item.spirit_sprite.use player @a ~ ~ ~ 1 1
playsound cnk:block.wine_rack.spirited player @a ~ ~ ~ 1 1