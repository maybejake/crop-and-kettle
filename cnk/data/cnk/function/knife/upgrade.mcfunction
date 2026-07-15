advancement revoke @s only cnk:netherite_knife
loot replace entity @s container.0 loot {pools:[{rolls:1,entries:[{type:loot_table,value:"cnk:technical/inventory"}]}],functions:[ \
  { \
    "function": "minecraft:filtered", \
    "item_filter": { \
      "items": "minecraft:netherite_sword", \
      "predicates": { \
        "minecraft:custom_data": {"cnk":{"knife":true,"diamond":true}} \
      } \
    }, \
    "on_pass": [{function:"minecraft:reference",name:"cnk:netherite_knife"}] \
  } \
]}