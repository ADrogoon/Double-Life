#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:get_p1_health
#> Imports : 'player'
#% ----~~~~====~~~~----

#! :: getChangeInHealth(player)
execute store result score @s newHealth run data get entity @s Health
execute unless score @s prevHealth = @s newHealth run data modify storage dl:health Health set from entity @s Health
execute unless score @s prevHealth = @s newHealth run scoreboard players set #changedHealth joinedPlayers 1
scoreboard players set #healing joinedPlayers 0
execute if score @s prevHealth < @s newHealth run scoreboard players set #healing joinedPlayers 1
execute store result score @s prevHealth run data get entity @s Health