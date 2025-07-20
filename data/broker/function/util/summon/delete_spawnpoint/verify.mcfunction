$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"angry_villager"},\
    CustomNameVisible:1b,\
    Radius:0.2f,\
    Duration:600,\
    Tags:["broker_spawner_name","broker_delete_spawner"],\
    CustomName:{"color":"#FF3300","text":"$(type)"}}

tellraw @a[tag=command_executor,distance=..10] {"text":""}
$tellraw @a[tag=command_executor,distance=..10] {"text":"","color":"red","extra":[{"text":"                    Delete villager spawner ["},{"text":"$(type)","color":"green"},{"text":"]?"}]}
tellraw @a[tag=command_executor,distance=..10] {"text":"                   (You have 30 seconds to confirm)","color":"red"}
tellraw @a[tag=command_executor,distance=..10] {"text":""}

tellraw @a[tag=command_executor,distance=..10] [{"text":"                                    "},{"text":"[Confirm]","color":"dark_red","click_event":{"action":"run_command","command":"/function broker:util/summon/delete_spawnpoint/confirmed"}}]
tellraw @a[tag=command_executor,distance=..10] {"text":""}