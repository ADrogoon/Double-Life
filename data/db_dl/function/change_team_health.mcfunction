#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:change_team_health
#> Imports : ''
#% ----~~~~====~~~~----

#! :: changeTeamHealth(p1, p2)
execute if score @s isDead matches 1.. run scoreboard players set #isDead joinedPlayers 1
execute if score #changedHealth joinedPlayers matches 1 run function db_dl:calc_changed_health with storage dl:health
scoreboard players set @s isDead 0