
say boob

scoreboard objectives add zz.broker.util.conv dummy
execute store result score token_type zz.broker.util.conv run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".broker.type
execute store success score inv_full zz.broker.util.conv run data get entity @s Inventory[35]

execute if score token_type zz.broker.util.conv matches 1 run function broker:util/conversion/promote/copper
execute if score token_type zz.broker.util.conv matches 2 run function broker:util/conversion/promote/silver
execute if score token_type zz.broker.util.conv matches 3 run function broker:util/conversion/promote/gold
execute if score token_type zz.broker.util.conv matches 4 run function broker:util/conversion/promote/platinum

# Reset trigger
advancement revoke @s only broker:util/conversion/trigger_promote

execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    scoreboard objectives remove zz.broker.util.conv

scoreboard players remove .num_entries zz.broker.uservar.conv.promote 1
scoreboard players set @s zz.broker.uservar.conv.promote 0

execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    execute unless score .num_entries zz.broker.uservar.conv.promote matches 1.. run \
        scoreboard objectives remove zz.broker.uservar.conv.promote