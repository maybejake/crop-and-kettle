advancement grant @s only minecraft:husbandry/plant_seed

# seed switch
function cnk:seeds/switch

# remove seed
item modify entity @s[gamemode=!creative] cnk:use/seed {"type":"minecraft:set_count","count":-1,"add":true}

# shwing
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{cnk:{seed:true}}] run return run swing @s mainhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{cnk:{seed:true}}] run swing @s offhand