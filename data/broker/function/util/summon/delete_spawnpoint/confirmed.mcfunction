
execute as @n[type=area_effect_cloud,tag=broker_delete_spawner,distance=..10] at @s run \
    particle minecraft:sonic_boom ~ ~ ~

execute as @n[type=area_effect_cloud,tag=broker_delete_spawner,distance=..10] at @s run \
    kill @e[distance=..1,type=marker,tag=broker_villager_spawner,limit=1]

execute as @n[type=area_effect_cloud,tag=broker_delete_spawner,distance=..10] at @s run \
    kill @s

tellraw @s [{"text":"Deleted.","color":"red"}]