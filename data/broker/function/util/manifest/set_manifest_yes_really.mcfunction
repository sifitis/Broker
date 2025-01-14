
#This is the function that ACTUALLY lets you change a manifest entry when you're sure about it.

$execute unless data storage datapack:broker data.component_manifest.log[{entry_id:$(entry_id)}] run \
    data modify storage datapack:broker data.component_manifest.log append value {entry_id:"$(entry_id)"}

$data modify storage datapack:broker data.component_manifest.$(entry_id) set from entity @s Inventory[0].components

$tellraw @s [\
    {"text":"Manifest entry for ID [","color":"#00FF44"},\
    {"text":"$(entry_id)","color":"#1CEEEE"},\
    {"text":"] updated.","color":"#00FF44"}\
]

