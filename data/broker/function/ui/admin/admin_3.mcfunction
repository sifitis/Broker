# Page header
tellraw @s [{"text":""}]
tellraw @s [\
    {"text":"<Back]","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/function broker:ui/admin/admin_2"}},\
    {"text":"                  ❂ Broker Admin Panel ❂              ","color":"#ff1133"},\
    {"text":"","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/function broker:ui/admin/admin_3"}}\
]

tellraw @s [{"text":"=====================================================","color":"#880022"}]
tellraw @s [{"text":"Shopkeep Settings - - - - - - - - - - -","color":"#666666"}]

tellraw @s [{"text":""}]
tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"Kill Shopkeeper","color":"#ffde4d","clickEvent":{"action":"run_command","value":"/execute as @n[type=villager,tag=token_merchant,distance=..8] at @s run tp @s ~ -100 ~"}},\
    {"text":"]"},{"text":" - Kills the nearest (within 8 blocks) shopkeeper villager","color":"gray"}]}

tellraw @s [{"text":""}]
tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"Kill Spawner","color":"#ffde4d","clickEvent":{"action":"run_command","value":"/function broker:util/summon/delete_spawnpoint"}},\
    {"text":"]"},{"text":" - Prompts to remove the nearest shopkeeper respawn point.","color":"gray"}]}

tellraw @s [{"text":""}]
tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"Show Spawners","color":"#ffde4d","clickEvent":{"action":"run_command","value":"/function broker:util/summon/show_spawnpoint"}},\
    {"text":"]"},{"text":" - Creates visual for all spawnpoints within 64 blocks for 30 seconds.","color":"gray"}]}

tellraw @s [{"text":""}]
tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"Summon Shopkeeper","color":"#ffde4d","clickEvent":{"action":"run_command","value":"/function broker:ui/admin/summon/villager"}},\
    {"text":"]"},{"text":" - Open Villager summoning menu.","color":"gray"}]}

tellraw @s [{"text":""}]
tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"Summon Spawner","color":"#ffde4d","clickEvent":{"action":"run_command","value":"/function broker:ui/admin/summon/spawnpoint"}},\
    {"text":"]"},{"text":" - Open Villager spawnpoint summoning menu.","color":"gray"}]}