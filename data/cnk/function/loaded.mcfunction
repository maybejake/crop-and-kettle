tellraw @a [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":cnk.loaded,"font":"minecraft:default"}]

scoreboard objectives add cnk.distance dummy
scoreboard objectives add cnk.reach dummy
scoreboard objectives add cnk.age dummy
scoreboard objectives add cnk.dummy dummy
scoreboard objectives add cnk.max_age dummy

scoreboard objectives add cnk.break_short_grass minecraft.mined:short_grass
scoreboard objectives add cnk.break_tall_grass minecraft.mined:tall_grass

scoreboard objectives add cnk.cooking_pot_item_count dummy
scoreboard objectives add cnk.cook_time dummy
scoreboard objectives add cnk.cook_cooldown dummy

scoreboard objectives add cnk.hit_count dummy
scoreboard objectives add cnk.hit_timer dummy

scoreboard objectives add cnk.item_count dummy
scoreboard objectives add cnk.mix_time dummy
scoreboard objectives add cnk.rotation dummy

scoreboard objectives add cnk.rotten_tomato minecraft.used:minecraft.snowball

scoreboard objectives add cnk.uid dummy

scoreboard objectives add cnk.brew_time dummy

scoreboard objectives add cnk.timer dummy
scoreboard objectives add cnk.hurt_timer dummy
scoreboard objectives add cnk.spin_timer dummy

scoreboard objectives add cnk.scythe_cooldown dummy

scoreboard objectives add cnk.level dummy

scoreboard objectives add cnk.distill_timer dummy

scoreboard objectives add cnk.wine_time_cooldown dummy

scoreboard objectives add cnk.wine_time dummy

scoreboard objectives add cnk.creeping_wine minecraft.used:minecraft.splash_potion

scoreboard objectives add cnk.drop_food minecraft.dropped:minecraft.poisonous_potato

scoreboard objectives add cnk.speak_cooldown dummy

scoreboard objectives add cnk.use_book minecraft.used:minecraft.written_book

scoreboard objectives add cnk.use_lectern minecraft.custom:minecraft.interact_with_lectern

scoreboard objectives add cnk.cookbook_buttons trigger

scoreboard objectives add cnk.cookbook_current_page dummy

scoreboard objectives add cnk.distiller_book_buttons trigger

scoreboard objectives add cnk.distiller_book_current_page dummy

scoreboard objectives add cnk.settings trigger

scoreboard objectives add cnk.foodie_book_buttons trigger

scoreboard objectives add cnk.seed_cooldown dummy

scoreboard objectives add cnk.bottle_count dummy
scoreboard objectives add cnk.attack_count dummy

scoreboard objectives add cnk.crop_version dummy

scoreboard objectives add cnk.candy_count dummy

scoreboard objectives add cnk.treat_basket_timer dummy

scoreboard players set $installed cnk.dummy 1