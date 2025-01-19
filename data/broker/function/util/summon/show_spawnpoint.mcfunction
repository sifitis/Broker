
execute as @e[type=marker,tag=broker_villager_spawner,distance=..64] at @s run \
    function broker:util/summon/show_spawnpoint/create_nameplate with entity @s data.broker

