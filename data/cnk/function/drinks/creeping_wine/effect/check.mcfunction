scoreboard players set @s cnk.creeping_wine 0

tag @s add cnk.creeping_wine_throw
execute as @n[type=minecraft:splash_potion,distance=..10,nbt={Item:{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"creeping_wine"}},smithed:{ignore:{functionality:true,crafting:true}}}}}}] at @s run function cnk:drinks/creeping_wine/effect/setup
tag @s remove cnk.creeping_wine_throw