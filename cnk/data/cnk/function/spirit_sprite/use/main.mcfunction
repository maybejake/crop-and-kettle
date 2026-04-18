scoreboard players set @s cnk.use_cooldown 5

function cnk:spirit_sprite/use/action

execute if predicate cnk:sprite/mainhand run swing @s mainhand
execute if predicate cnk:sprite/mainhand run return run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}

execute if predicate cnk:sprite/offhand run swing @s offhand
execute if predicate cnk:sprite/offhand run return run item modify entity @s[gamemode=!creative] weapon.offhand {"function":"minecraft:set_count","count":-1,"add":true}