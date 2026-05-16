$dialog show @s { \
    "type": "minecraft:notice", \
    "title": [ \
        {"translate": "cnk.source"}, \
        {"text": " "}, \
        {"translate": "cnk.dialog.statistics"}, \
    ], \
    "body": [ \
        { \
            "type": "minecraft:plain_message", \
            "contents": [ \
                {"translate":"cnk.dialog.statistics.food_cooked", with:["$(food_cooked)"]}, "\n\n", \
                {"translate":"cnk.dialog.statistics.food_mixed", with:["$(food_mixed)"]}, "\n\n", \
                {"translate":"cnk.dialog.statistics.food_cut", with:["$(food_cut)"]}, "\n\n", \
                {"translate":"cnk.dialog.statistics.drinks_bottled", with:["$(drinks_bottled)"]}, "\n\n", \
                {"translate":"cnk.dialog.statistics.crops_harvested", with:["$(crops_harvested)"]}, "\n\n", \
                {"translate":"cnk.dialog.statistics.parcels_opened", with:["$(parcels_opened)"]}, "\n\n", \
                {"translate":"cnk.dialog.statistics.sprites_used", with:["$(sprites_used)"]}, "\n\n", \
                {"translate":"cnk.dialog.statistics.oldest_wine_drank", with:["$(oldest_wine_drank)"]}, "\n\n", \
                {"translate":"cnk.dialog.statistics.feasts_eaten", with:["$(feasts_eaten)"]}, "\n\n", \
                {"translate":"cnk.dialog.statistics.bosses_defeated", with:["$(bosses_defeated)"]}, \
            ], \
            "width": 150 \
        } \
    ] \
}