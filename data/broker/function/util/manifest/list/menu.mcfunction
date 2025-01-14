tellraw @s [{"text":"____________________________________________","color":"gray"}]
$tellraw @s [{"text":"Entry ID: ","color":"gray"},{"text":"$(entry_id)","color":"green"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"Options","color":"gray"}]

$tellraw @s [{"text":"View","color":"#1CEEEE",\
    "clickEvent":{"action":"run_command","value":"/data get storage datapack:broker data.component_manifest.$(entry_id)"}\
    },{"text":" - View the entry data.","color":"white"}]

$tellraw @s [{"text":"Delete","color":"red",\
    "clickEvent":{"action":"run_command","value":"/function broker:util/manifest/delete_entry {entry_id:$(entry_id)}"}\
    },{"text":" - Permanently delete the entry data forever and ever.","color":"white"}]

tellraw @s [{"text":"____________________________________________","color":"gray"}]