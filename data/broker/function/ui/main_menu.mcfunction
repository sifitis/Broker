

tellraw @s [{"text":""}]
tellraw @s [{"text":" ------------------ ❂ Broker v3.0.0 ❂ -----------------","color":"#5d7fbd"}]
tellraw @s [{"text":"=====================================================","color":"#263553"}]

tellraw @s {"text":"","color":"#666666","extra":[\
    {"text":"["},{"text":"Help","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/trigger broker set 373100"}\
    },{"text":"] - "},{"text":"Information about the datapack.","color":"gray"}]}

tellraw @s {"text":"","color":"#666666","extra":[\
    {"text":"["},{"text":"Settings","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/trigger broker set 373200"}\
    },{"text":"] - "},{"text":"User settings.","color":"gray"}]}

tellraw @s [{"text":""}]

tellraw @s {"text":"","color":"#666666","extra":[\
    {"text":"["},{"text":"Admin","color":"red",\
        "clickEvent":{"action":"run_command","value":"/function broker:ui/admin"}\
    },{"text":"] - "},{"text":"Admin and server settings. (Op required)","color":"gray"}]}

tellraw @s [{"text":"=====================================================","color":"#263553"}]