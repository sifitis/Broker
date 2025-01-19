

execute as @e[type=marker,tag=broker_villager_spawner] at @s run function broker:util/summon/generate_villager

execute store result storage datapack:broker process.regenerate_villagers.ticks int 1.0 run scoreboard players get .villager_regenerate_ticks zz.broker.globalvar.settings
function broker:util/subprocess/regenerate_villagers/schedule_next with storage datapack:broker process.regenerate_villagers