
$execute if data storage datapack:broker data.component_manifest.log[{entry_id:"$(entry_id)"}] run \
    tellraw @s [{"text":" Manifest entry [","color":"red"},\
        {"text":"$(entry_id)","color":"green"},\
        {"text":"] deleted.","color":"red"}\
    ]

$execute unless data storage datapack:broker data.component_manifest.log[{entry_id:"$(entry_id)"}] run \
    tellraw @s [{"text":" Manifest entry [","color":"red"},\
        {"text":"$(entry_id)","color":"dark_red"},\
        {"text":"] does not exist.","color":"red"}\
    ]

$execute if data storage datapack:broker data.component_manifest.log[{entry_id:"$(entry_id)"}] run data \
    remove storage datapack:broker data.component_manifest.$(entry_id)

$execute if data storage datapack:broker data.component_manifest.log[{entry_id:"$(entry_id)"}] run \
    data remove storage datapack:broker data.component_manifest.log[{entry_id:"$(entry_id)"}]