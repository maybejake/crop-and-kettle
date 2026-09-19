item modify entity @s weapon.mainhand {"type":"set_custom_data","tag":{fix:"idk why this works but it does"}}

effect give @s invisibility infinite 0 true

# remove gossip
data merge entity @s {DeathTime:19s,Gossips:[]}

data remove entity @s[tag=!cnk.fizz_trading] Offers.Recipes