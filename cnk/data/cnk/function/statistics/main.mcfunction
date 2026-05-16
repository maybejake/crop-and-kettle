scoreboard players reset @s cnk.settings
scoreboard players enable @s cnk.settings

# defaults
data modify storage cnk:temp statistics set value { \
    food_cooked: 0, \
    food_mixed: 0, \
    food_cut: 0, \
    drinks_bottled: 0, \
    crops_harvested: 0, \
    parcels_opened: 0, \
    sprites_used: 0, \
    oldest_wine_drank: 0, \
    feasts_eaten: 0, \
    bosses_defeated: 0 \
}

# get stats
execute store result storage cnk:temp statistics.food_cooked int 1 run scoreboard players get @s cnk.statistic.food_cooked
execute store result storage cnk:temp statistics.food_mixed int 1 run scoreboard players get @s cnk.statistic.food_mixed
execute store result storage cnk:temp statistics.food_cut int 1 run scoreboard players get @s cnk.statistic.food_cut
execute store result storage cnk:temp statistics.drinks_bottled int 1 run scoreboard players get @s cnk.statistic.drinks_bottled
execute store result storage cnk:temp statistics.crops_harvested int 1 run scoreboard players get @s cnk.statistic.crops_harvested
execute store result storage cnk:temp statistics.parcels_opened int 1 run scoreboard players get @s cnk.statistic.parcels_opened
execute store result storage cnk:temp statistics.sprites_used int 1 run scoreboard players get @s cnk.statistic.sprites_used
execute store result storage cnk:temp statistics.oldest_wine_drank int 1 run scoreboard players get @s cnk.statistic.oldest_wine_drank
execute store result storage cnk:temp statistics.feasts_eaten int 1 run scoreboard players get @s cnk.statistic.feasts_eaten
execute store result storage cnk:temp statistics.bosses_defeated int 1 run scoreboard players get @s cnk.statistic.bosses_defeated

function cnk:statistics/dialog with storage cnk:temp statistics