execute if score @s zz.broker.uservar.setting.automerge.strikes matches 1 run data modify storage datapack:broker ui.settings.automerge.strikes set value {"text":"1","color":"#1ceeee"}
execute if score @s zz.broker.uservar.setting.automerge.strikes matches 2 run data modify storage datapack:broker ui.settings.automerge.strikes set value {"text":"2","color":"#1ceeee"}
execute if score @s zz.broker.uservar.setting.automerge.strikes matches 3 run data modify storage datapack:broker ui.settings.automerge.strikes set value {"text":"3","color":"#1ceeee"}
execute if score @s zz.broker.uservar.setting.automerge.strikes matches 4 run data modify storage datapack:broker ui.settings.automerge.strikes set value {"text":"4","color":"#1ceeee"}
execute if score @s zz.broker.uservar.setting.automerge.strikes matches 1000000 run data modify storage datapack:broker ui.settings.automerge.strikes set value {"text":"Never","color":"red"}

tellraw @s [{"text":""}]
tellraw @s \
    {"text":"","color":"#666666","extra":[\
        {"text":"["},\
        {"text":"Smart Pause Strikes","color":"#dcf7f6",\
        "click_event":\
            {"action":"run_command","command":"/trigger broker set 373303"},\
        "hoverEvent":\
            {"action":"show_text","contents":[\
                {"text":"","color":"gray"},{"text":"Change automerge pause strikes\n","underlined":true,"color":"gray"},\
                {"text":"Toggle between 1, 2, 3, 4, and 'Never'."}\
            ]}\
        },\
        {"text":"] ["},{"nbt":"ui.settings.automerge.strikes","storage":"datapack:broker","interpret":true},{"text":"] - "},\
        {"text":"How many manual (offhand) token merges does it take before the automerge pause is aborted. (Default 1)","color":"gray"}\
    ]}