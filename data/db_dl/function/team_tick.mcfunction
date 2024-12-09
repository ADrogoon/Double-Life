#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:team_tick
#> Imports : ''
#% ----~~~~====~~~~----

#> !!! Run as Player 1 !!!

#! :: getChangeInTeamHealth(p1, p2)
scoreboard players set #changedHealth joinedPlayers 0
scoreboard players operation #getID joinedPlayers = @s player1
execute as @a if score @s joinedPlayers = #getID joinedPlayers run function db_dl:get_change_in_health

#! :: changeTeamHealth(p1, p2)
execute as @a if score @s joinedPlayers = #getID joinedPlayers run function db_dl:change_team_health
scoreboard players set #isDead joinedPlayers 0
scoreboard players set @a isDead 0