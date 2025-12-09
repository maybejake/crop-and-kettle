particle minecraft:large_smoke ~ ~1 ~ 0.3 0.8 0.3 0.1 100
playsound minecraft:block.trial_spawner.ambient_ominous block @a ~ ~ ~ 1 2
playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 1 1
playsound cnk:block.candy_bowl.laugh block @a ~ ~ ~ 1 0.5

item modify entity @p[tag=cnk.interact_scarecrow] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
function cnk:scarecrow/entity/summon

execute on passengers run kill @s
kill @s