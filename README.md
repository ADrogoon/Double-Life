// If error happens : 
set life ->
scoreboard players set (INSERT_PLAYER) (SET LIFE COUNT 0-3 0 is green 3 is dead)
execute as (INSERT_PLAYER) run function db_dl:change_lives

generate players items ->
execute as (INSERT_PLAYER) run function db_dl:on_death/gen_items with storage db_dl:on_death deathLocation
