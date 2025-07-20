tellraw @s [{"text":"#                   IMPORTANT NOTICE!                   #","color":"red","bold":true,"underlined":true}]

tellraw @s [\
{"text":"This function sets the component data of an item to the broker \
component manifest, which is a command storage for important \
custom items used in function macros. It is strongly \
recommended that you don't attempt to manipulate the manifest \
unless you are absolutely certain you know what you're doing.","color":"yellow"}]

tellraw @s [{"text":""}]

tellraw @s [{"text":"If you are sure, place the reference item in your FIRST hotbar slot and press the button below.","color":"gray"}]

tellraw @s [{"text":"                                 [Confirm]","color":"#1CEEEE","click_event":\
    {"action":"suggest_command","command":"/function broker:util/manifest/set_manifest_yes_really {entry_id:\"<PUT YOUR ID HERE>\"}"}\
}]