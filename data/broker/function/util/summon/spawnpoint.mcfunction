
#   args:   [type] the name of the villager to spawn

$execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["broker_villager_spawner","$(type)"],data:{broker:{type:"$(type)"}}}