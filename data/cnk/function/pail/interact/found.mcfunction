data remove entity @s interaction

execute if items entity @p[tag=cnk.interact_pail] weapon.mainhand minecraft:milk_bucket on vehicle run return run function cnk:pail/interact/fill/bucket {liquid: "milk", color:16777215}
execute if items entity @p[tag=cnk.interact_pail] weapon.mainhand *[minecraft:custom_data~{"cnk":{"ingredient":{"type":"milk_bottle"}}}] on vehicle run return run function cnk:pail/interact/fill/bottle {liquid: "milk",color:16777215}

execute if items entity @p[tag=cnk.interact_pail] weapon.mainhand minecraft:water_bucket on vehicle run return run function cnk:pail/interact/fill/bucket {liquid: "water", color:4159204}
execute if items entity @p[tag=cnk.interact_pail] weapon.mainhand minecraft:potion[minecraft:potion_contents={"potion":"minecraft:water"}] on vehicle run return run function cnk:pail/interact/fill/bottle {liquid: "water", color:4159204}

execute if items entity @p[tag=cnk.interact_pail] weapon.mainhand minecraft:bucket on vehicle unless function cnk:pail/interact/liquid_check/empty run return run function cnk:pail/interact/empty/bucket
execute if items entity @p[tag=cnk.interact_pail] weapon.mainhand minecraft:glass_bottle on vehicle unless function cnk:pail/interact/liquid_check/empty run return run function cnk:pail/interact/empty/bottle

#addon support
function #cnk:addons/pail/interact