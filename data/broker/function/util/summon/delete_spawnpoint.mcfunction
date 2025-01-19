
tag @s add command_executor

execute as @n[type=marker,tag=broker_villager_spawner,distance=..10] at @s run \
    function broker:util/summon/delete_spawnpoint/verify with entity @s data.broker

tag @s remove command_executor