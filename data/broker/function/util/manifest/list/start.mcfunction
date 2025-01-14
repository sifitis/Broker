tellraw @a[tag=list_executor] [{"text":"____________________________________________","color":"gray"}]
tellraw @a[tag=list_executor] [{"text":"Component Manifest Entries:","color":"gray"}]
execute as @a[tag=list_executor] run function broker:util/manifest/list/loop
tellraw @a[tag=list_executor] [{"text":"____________________________________________","color":"gray"}]
tag @a[tag=list_executor] remove list_executor
data remove storage datapack:broker process