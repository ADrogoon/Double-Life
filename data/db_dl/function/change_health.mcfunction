#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:give_health
#> Imports : ''
#% ----~~~~====~~~~----

$attribute @s minecraft:generic.max_health base set $(Health)
execute if score #healing joinedPlayers matches 1 run effect give @s minecraft:instant_health 1 10 true
schedule function db_dl:restore_health 2t