$data modify entity @s item.components."minecraft:lore" set value [ \
    {"translate":"item.cnk.picnic_basket.tooltip", "color":"gray", "italic":false, with:[{text:"$(count)"}, {text:"$(max_items)"}]}, \
    {"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false} \
]