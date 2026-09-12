execute store result score $gametime dcf.dummy run time query gametime
execute as @a[tag=dcf.ready] if score @s dcf.timer <= $gametime dcf.dummy run function dcf:player_setup/reset