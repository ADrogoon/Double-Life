#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:damage
#> Imports : ''
#% ----~~~~====~~~~----

#! :: changePlayerHealth(player)
function db_dl:change_health with storage dl:health
execute if score #isDead joinedPlayers matches 1 as @a if score @s joinedPlayers = #getID joinedPlayers run kill @s