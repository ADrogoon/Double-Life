#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:ids/new_player
#> Imports : ''
#% ----~~~~====~~~~----

#! :: newPlayer(unloadedPlayer)
scoreboard players add #global playerIds 1
scoreboard players operation @s playerIds = #global playerIds
scoreboard players operation getEven playerIds = #global playerIds
scoreboard players operation getEven playerIds %= 2 const
execute if score getEven playerIds matches 1 run scoreboard players add #teamID playerIds 1
execute if score getEven playerIds matches 0 run scoreboard players operation @s player1 = #teamID playerIds
scoreboard players operation @s joinedPlayers = #teamID playerIds
team join greenLives