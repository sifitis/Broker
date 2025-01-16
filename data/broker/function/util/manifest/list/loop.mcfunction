

function broker:util/manifest/list/print_entry with storage datapack:broker process.manifest.list[0]
data remove storage datapack:broker process.manifest.list[0]

# If the process list has any data in it, continue the loop
execute if data storage datapack:broker process.manifest.list[0] run function broker:util/manifest/list/loop