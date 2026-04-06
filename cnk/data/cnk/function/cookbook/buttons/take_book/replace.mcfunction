# kill book entity
execute align xyz positioned ~0.5 ~0.5 ~0.5 run kill @n[tag=cnk.lectern_book, distance=..0.1]

data remove block ~ ~ ~ Book
execute if block ~ ~ ~ minecraft:lectern[facing=north] run return run setblock ~ ~ ~ minecraft:lectern[facing=north,has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=east] run return run setblock ~ ~ ~ minecraft:lectern[facing=east,has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=south] run return run setblock ~ ~ ~ minecraft:lectern[facing=south,has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=west] run return run setblock ~ ~ ~ minecraft:lectern[facing=west,has_book=false]