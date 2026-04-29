data modify entity @s Item set from storage cnk:temp picnic_basket.update.item
item modify entity @s contents {function:"minecraft:set_name",entity:"this",name:{selector:"@s"}}

# store
data modify storage cnk:temp picnic_basket.update.item_name.translate set from entity @s Item.components."minecraft:custom_name".translate

kill @s