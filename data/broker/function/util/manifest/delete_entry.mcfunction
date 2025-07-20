$tellraw @s [{"text":" Please confirm you want to permanently delete [","color":"red"},\
    {"text":"$(entry_id)","color":"green"},\
    {"text":"] manifest entry. This can't be undone.","color":"red"}]

tellraw @s [{"text":""}]

$tellraw @s [{"text":"                                 [Confirm]","color":"#990000","click_event":\
    {"action":"run_command","command":"/function broker:util/manifest/delete_entry_yes_really {entry_id:\"$(entry_id)\"}"}\
}]