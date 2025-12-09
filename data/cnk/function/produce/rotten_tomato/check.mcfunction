scoreboard players set @s cnk.rotten_tomato 0

tag @s add cnk.rotten_tomato_throw
execute as @n[type=minecraft:snowball,distance=..10,nbt={Item:{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rotten_tomato"}},smithed:{ignore:{functionality:true,crafting:true}}}}}}] at @s run function cnk:produce/rotten_tomato/setup
execute as @n[type=minecraft:snowball,distance=..10,nbt={Item:{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"very_rotten_tomato"}},smithed:{ignore:{functionality:true,crafting:true}}}}}}] at @s run function cnk:produce/rotten_tomato/setup_bad
tag @s remove cnk.rotten_tomato_throw