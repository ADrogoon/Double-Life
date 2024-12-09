#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:change_lives
#> Imports : ''
#% ----~~~~====~~~~----

execute if score @s lives matches 1 run team join yellowLives @s
execute if score @s lives matches 2 run team join redLives @s
execute if score @s lives matches 3 run team join spectator @s
execute if score @s lives matches 3 run gamemode spectator
data modify storage db_dl:on_death deathLocation.dimension set from entity @s LastDeathLocation.dimension
data modify storage db_dl:on_death deathLocation.x set from entity @s LastDeathLocation.pos[0]
data modify storage db_dl:on_death deathLocation.y set from entity @s LastDeathLocation.pos[1]
data modify storage db_dl:on_death deathLocation.z set from entity @s LastDeathLocation.pos[2]
execute if score @s lives matches 3 run function db_dl:on_death/gen_items with storage db_dl:on_death deathLocation