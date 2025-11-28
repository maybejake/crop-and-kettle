# you're not supposed to be here
loot spawn ~ ~-0.3 ~ loot cnk:zzz_secret/meat_guide
particle minecraft:large_smoke ~ ~-0.1 ~ 0.18 0.1 0.18 0 5 force
particle minecraft:trial_spawner_detection_ominous ~ ~-0.1 ~ 0.18 0.1 0.18 0 10
playsound minecraft:block.trial_spawner.ambient_ominous block @a ~ ~ ~ 1 2

tellraw @p[tag=cnk.interact_cutting_board,predicate=cnk:ritual_dagger,distance=..20] {translate:cnk.meat_guide.hint, color:"gray", italic:true}
item replace entity @p[tag=cnk.interact_cutting_board,predicate=cnk:ritual_dagger,distance=..20] weapon.mainhand with minecraft:air

function cnk:cutting_board/cut/finish