#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:tick
#> Imports : ''
#% ----~~~~====~~~~----

execute as @a if score @s isDead matches 1 run function db_dl:change_lives
execute as @a unless score @s joinedPlayers matches 1.. run function db_dl:ids/new_player
execute as @a[scores={player1=1..}] run function db_dl:team_tick
