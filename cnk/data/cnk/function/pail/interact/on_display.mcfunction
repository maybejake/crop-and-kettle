execute if items entity @p[tag=cnk.interact_pail,distance=..20] weapon.mainhand minecraft:milk_bucket run return run function cnk:pail/interact/fill/bucket {liquid: "milk", color:16777215}
execute if items entity @p[tag=cnk.interact_pail,distance=..20] weapon.mainhand *[minecraft:custom_data~{"cnk":{"ingredient":{"type":"milk_bottle"}}}] run return run function cnk:pail/interact/fill/bottle {liquid: "milk",color:16777215}

execute if items entity @p[tag=cnk.interact_pail,distance=..20] weapon.mainhand minecraft:water_bucket run return run function cnk:pail/interact/fill/bucket {liquid: "water", color:4159204}
execute if items entity @p[tag=cnk.interact_pail,distance=..20] weapon.mainhand minecraft:potion[minecraft:potion_contents={"potion":"minecraft:water"}] run return run function cnk:pail/interact/fill/bottle {liquid: "water", color:4159204}

execute if items entity @p[tag=cnk.interact_pail,distance=..20] weapon.mainhand minecraft:bucket unless function cnk:pail/interact/liquid_check/empty run return run function cnk:pail/interact/empty/bucket
execute if items entity @p[tag=cnk.interact_pail,distance=..20] weapon.mainhand minecraft:glass_bottle unless function cnk:pail/interact/liquid_check/empty run return run function cnk:pail/interact/empty/bottle