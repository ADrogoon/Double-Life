#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:load
#> Imports : ''
#% ----~~~~====~~~~----

#! Make Scoreboards
scoreboard objectives add const dummy
scoreboard objectives add isDead minecraft.custom:minecraft.deaths
scoreboard objectives add joinedPlayers dummy
scoreboard objectives add lives minecraft.custom:minecraft.deaths
scoreboard objectives add newHealth dummy
scoreboard objectives add player1 dummy
scoreboard objectives add playerIds dummy
scoreboard objectives add prevHealth dummy

#! Constants
scoreboard players set 2 const 2

#! Teams
team add greenLives
team add yellowLives
team add redLives
team add spectator

team modify greenLives color green
team modify yellowLives color yellow
team modify redLives color red
team modify spectator color gray