
# Page header
tellraw @s [{"text":""}]
tellraw @s [{"text":"                            ❂ User Settings ❂","color":"#5d7fbd"}]
tellraw @s [{"text":"=====================================================","color":"#263553"}]


# --- Automerge Mode --- #

execute if score @s zz.broker.uservar.setting.automerge.mode matches 0 run data modify storage datapack:broker ui.settings.automerge.mode set value '{"text":"Off","color":"red"}'
execute if score @s zz.broker.uservar.setting.automerge.mode matches 1 run data modify storage datapack:broker ui.settings.automerge.mode set value '{"text":"On","color":"green"}'
execute if score @s zz.broker.uservar.setting.automerge.mode matches 2 run data modify storage datapack:broker ui.settings.automerge.mode set value '{"text":"Smart","color":"yellow"}'

tellraw @s \
    {"text":"","color":"#666666","extra":[\
        {"text":"["},\
        {"text":"Automerge","color":"#dcf7f6",\
        "clickEvent":\
            {"action":"run_command","value":"/trigger broker set 373300"},\
        "hoverEvent":\
            {"action":"show_text","contents":[\
                {"text":"","color":"gray"},{"text":"Change automerge mode\n","underlined":true,"color":"gray"},\
                {"text":"On","underlined":false,"color":"green"},{"text":" - Tokens will always merge to their highest denomination.\n"},\
                {"text":"Smart","underlined":false,"color":"yellow"},{"text":" - Tokens will stop merging for a time if you manually split one. They will resume either if you manually merge them or if a set time passes.\n"},\
                {"text":"Off","underlined":false,"color":"red"},{"text":" - Tokens will never merge.\n"}\
            ]}\
        },\
        {"text":"] ["},{"nbt":"ui.settings.automerge.mode","storage":"datapack:broker","interpret":true},{"text":"] - "},\
        {"text":"Should tokens automatically convert to the highest denomination when picked up.","color":"gray"}\
    ]}

# --- Automerge Smartmode Timeout --- #

execute if score @s zz.broker.uservar.setting.automerge.timeout matches 600 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"30s","color":"#1ceeee"}'
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 1200 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"1m","color":"#1ceeee"}'
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 2400 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"2m","color":"#1ceeee"}'
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 6000 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"5m","color":"#1ceeee"}'
execute if score @s zz.broker.uservar.setting.automerge.timeout matches -1 run data modify storage datapack:broker ui.settings.automerge.timeout set value '{"text":"Forever","color":"red"}'

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

# --- Conversion Pop Mute --- #

execute if score @s zz.broker.uservar.setting.conv.mute matches 0 run data modify storage datapack:broker ui.settings.conv.mute set value '{"text":"Unmuted","color":"green"}'
execute if score @s zz.broker.uservar.setting.conv.mute matches 1 run data modify storage datapack:broker ui.settings.conv.mute set value '{"text":"Muted","color":"red"}'

tellraw @s \
    {"text":"","color":"#666666","extra":[\
        {"text":"["},\
        {"text":"Mute Conversion","color":"#dcf7f6",\
        "clickEvent":\
            {"action":"run_command","value":"/trigger broker set 373302"},\
        "hoverEvent":\
            {"action":"show_text","contents":[\
                {"text":"","color":"gray"},{"text":"Change pop conversion mute state\n","underlined":true,"color":"gray"},\
                {"text":"Toggle between Muted and Unmuted'."}\
            ]}\
        },\
        {"text":"] ["},{"nbt":"ui.settings.conv.mute","storage":"datapack:broker","interpret":true},{"text":"] - "},\
        {"text":"Should the 'pop' sound play when tokens are converted","color":"gray"}\
    ]}