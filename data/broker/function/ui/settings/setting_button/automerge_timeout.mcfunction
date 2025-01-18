execute if score @s zz.broker.uservar.setting.automerge.timeout matches 600 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"30s","color":"#1ceeee"}'
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 1200 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"1m","color":"#1ceeee"}'
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 2400 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"2m","color":"#1ceeee"}'
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 6000 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"5m","color":"#1ceeee"}'
execute if score @s zz.broker.uservar.setting.automerge.timeout matches -1 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"Forever","color":"red"}'

tellraw @s [{"text":""}]
tellraw @s \
    {"text":"","color":"#666666","extra":[\
        {"text":"["},\
        {"text":"Smart Pause Time","color":"#dcf7f6",\
        "clickEvent":\
            {"action":"run_command","value":"/trigger broker set 373301"},\
        "hoverEvent":\
            {"action":"show_text","contents":[\
                {"text":"","color":"gray"},{"text":"Change automerge pause timeout\n","underlined":true,"color":"gray"},\
                {"text":"Toggle between 30s, 1m, 2m, 5m, and 'forever'."}\
            ]}\
        },\
        {"text":"] ["},{"nbt":"ui.settings.automerge.timeout","storage":"datapack:broker","interpret":true},{"text":"] - "},\
        {"text":"How long should Automerge (in Smart mode) pause after disabling before resuming merges.","color":"gray"}\
    ]}