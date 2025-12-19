advancement revoke @s only cnk:interact_wine_rack
stopsound @a[distance=..16] * block.chest.locked

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{cnk:{spirit_sprite:true}}] run function cnk:wine_rack/interact/sprite/find_crafter