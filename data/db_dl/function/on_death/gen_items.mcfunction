#% ----~~~~====~~~~----
#> By: Drogoon
#> File Path : db_dl:gen_items
#> Imports : ''
#% ----~~~~====~~~~----

$execute in $(dimension) positioned $(x) $(y) $(z) run summon item ~ ~ ~ {Item:{id:"minecraft:bundle", count:1b}, Tags:["db_dl.bundle"], Age:20s}
data modify entity @e[type=item,tag=db_dl.bundle,limit=1] Item.components."minecraft:bundle_contents" set from entity @s Inventory
damage @e[type=item,tag=db_dl.bundle,limit=1] 10