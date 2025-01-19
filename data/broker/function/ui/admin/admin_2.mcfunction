# Page header
tellraw @s [{"text":""}]
tellraw @s [\
    {"text":"<Back]","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/function broker:ui/admin"}},\
    {"text":"                  ❂ Broker Admin Panel ❂             ","color":"#ff1133"},\
    {"text":"[Page 3>","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/function broker:ui/admin/admin_3"}}\
]

tellraw @s [{"text":"=====================================================","color":"#880022"}]
tellraw @s [{"text":"Debug Settings - - - - - - - - - - -","color":"#666666"}]
tellraw @s [{"text":""}]

# --- Garbage Collection Mode --- #

execute if score .do_garbage_collection zz.broker.globalvar.settings matches 0 run data modify storage datapack:broker ui.admin.do_garbage_collection set value '{"text":"Off","color":"red"}'
execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run data modify storage datapack:broker ui.admin.do_garbage_collection set value '{"text":"On","color":"green"}'

tellraw @s \
    {"text":"","color":"#666666","extra":[\
        {"text":"["},\
        {"text":"Garbage Collection","color":"#dcf7f6",\
        "clickEvent":\
            {"action":"run_command","value":"/function broker:ui/admin/change_setting/do_garbage_collection"},\
        "hoverEvent":\
            {"action":"show_text","contents":[\
                {"text":"","color":"gray"},{"text":"Toggle garbage collection\n","underlined":true,"color":"gray"},\
                {"text":"On","underlined":false,"color":"green"},{"text":" - The datapack will attempt to remove unnecessary command storage and scoreboard objectives when not in use.\n"},\
                {"text":"Off","underlined":false,"color":"red"},{"text":" - The datapack won't delete anything.  Useful for debugging.\n"}\
            ]}\
        },\
        {"text":"] ["},{"nbt":"ui.admin.do_garbage_collection","storage":"datapack:broker","interpret":true},{"text":"] - "},\
        {"text":"Should the datapack attempt to clean up unnecessary storage/scoreboards","color":"gray"}\
    ]}

# --- Global Settings Sidebar --- #
tellraw @s [{"text":""}]
tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"Show","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar zz.broker.globalvar.settings"}},{"text":" "},\
    {"text":"Hide","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar"}},\
    {"text":"]"},{"text":" - Show/hide global settings scoreboard.","color":"gray"}]}