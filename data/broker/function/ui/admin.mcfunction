# Page header
tellraw @s [{"text":""}]
tellraw @s [\
    {"text":"<Back]","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/trigger broker set 1"}},\
    {"text":"                  ❂ Broker Admin Panel ❂             ","color":"#ff1133"},\
    {"text":"[Page 2>","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/function broker:ui/admin/admin_2"}}\
]

tellraw @s [{"text":"=====================================================","color":"#880022"}]

tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"❂","color":"#ba5f2f","clickEvent":{"action":"run_command","value":"/function admin:broker/give_copper_token"}},{"text":" "},\
    {"text":"❂","color":"#d1ccbc","clickEvent":{"action":"run_command","value":"/function admin:broker/give_silver_token"}},{"text":" "},\
    {"text":"❂","color":"#ffde4d","clickEvent":{"action":"run_command","value":"/function admin:broker/give_gold_token"}},{"text":" "},\
    {"text":"❂","color":"#dcf7f6","clickEvent":{"action":"run_command","value":"/function admin:broker/give_platinum_token"}},{"text":" "},\
    {"text":"❂","color":"#9ec0ff","clickEvent":{"action":"run_command","value":"/function admin:broker/give_mithril_token"}},\
    {"text":"]"},{"text":" - Spawn token","color":"gray"}]}

tellraw @s [{"text":""}]

tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"Automerge Cooldown","color":"#dcf7f6","clickEvent":{"action":"suggest_command","value":"/scoreboard players set .automerge_cooldown zz.broker.globalvar.settings <TICKS>"}},\
    {"text":"] ["},\
    {"score":{"name":".automerge_cooldown","objective":"zz.broker.globalvar.settings"},"color":"#1ceeee"},\
    {"text":"]"},{"text":" - How many ticks must pass after an automerge completes before another can occur. (Default 120)","color":"gray"}]}

tellraw @s [{"text":""}]

tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"Villager Regen Time","color":"#dcf7f6","clickEvent":{"action":"suggest_command","value":"/scoreboard players set .villager_regenerate_ticks zz.broker.globalvar.settings <TICKS>"}},\
    {"text":"] ["},\
    {"score":{"name":".villager_regenerate_ticks","objective":"zz.broker.globalvar.settings"},"color":"#1ceeee"},\
    {"text":"]"},{"text":" - How many ticks occur between shopkeeper villager respawn attempts. (Default 24000)","color":"gray"}]}



tellraw @s [{"text":""}]

tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"Force Regen Villagers","color":"#ffde4d","clickEvent":{"action":"run_command","value":"/function broker:util/subprocess/regenerate_villagers"}},\
    {"text":"]"},{"text":" - All shopkeeper villagers will respawn immediately- this will also restart the regen timer.","color":"gray"}]}