data modify storage datapack:broker process.manifest.list set from storage datapack:broker data.component_manifest.log

# If the process list has any data in it, start the loop
execute if data storage datapack:broker process.manifest.list[0] run tag @s add list_executor
execute if data storage datapack:broker process.manifest.list[0] run schedule function broker:util/manifest/list/start 1t

execute unless data storage datapack:broker process.manifest.list[0] run tellraw @s [{"text":"The manifest is empty.","color":"gray"}]