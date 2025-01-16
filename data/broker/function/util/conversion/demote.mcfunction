

scoreboard objectives add zz.broker.util.conv dummy
execute store result score token_type zz.broker.util.conv run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".broker.type

scoreboard players set .quantity_token_give zz.broker.util 64

execute if score token_type zz.broker.util.conv matches 2 run function broker:util/conversion/demote/silver
execute if score token_type zz.broker.util.conv matches 3 run function broker:util/conversion/demote/gold
execute if score token_type zz.broker.util.conv matches 4 run function broker:util/conversion/demote/platinum
execute if score token_type zz.broker.util.conv matches 5 run function broker:util/conversion/demote/mithril

scoreboard objectives remove zz.broker.util.conv

# Reset trigger
advancement revoke @s only broker:util/conversion/trigger_demote

scoreboard players remove .num_entries zz.broker.uservar.conv.demote 1
scoreboard players set @s zz.broker.uservar.conv.promote 0

execute if score .gc_scoreboards zz.broker.globalvar.settings matches 1 run \
    execute unless score .num_entries zz.broker.uservar.conv.demote matches 1.. run \
        scoreboard objectives remove zz.broker.uservar.conv.demote