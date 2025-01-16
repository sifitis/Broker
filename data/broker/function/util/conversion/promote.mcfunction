

scoreboard objectives add broker.util dummy
execute store result score token_type broker.util run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".broker.type

execute if score token_type broker.util matches 1 run function broker:util/conversion/promote/copper
execute if score token_type broker.util matches 2 run function broker:util/conversion/promote/silver
execute if score token_type broker.util matches 3 run function broker:util/conversion/promote/gold
execute if score token_type broker.util matches 4 run function broker:util/conversion/promote/platinum

scoreboard objectives remove broker.util

# Reset trigger
advancement revoke @s only broker:util/conversion/trigger_promote

scoreboard players remove .num_entries zz.broker.uservar.conv.promote 1
scoreboard players set @s zz.broker.uservar.conv.promote 0

execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    execute unless score .num_entries zz.broker.uservar.conv.promote matches 1.. run \
        scoreboard objectives remove zz.broker.uservar.conv.promote