
# --- Create scoreboards and collect data --- #
scoreboard objectives add zz.broker.util.conv dummy
execute store result score token_type zz.broker.util.conv run data get entity @s equipment.offhand.components."minecraft:custom_data".broker.type
execute store success score inv_full zz.broker.util.conv run data get entity @s Inventory[35]

# --- set the token give amount --- #
scoreboard players set .quantity_token_give zz.broker.util 64

execute if score token_type zz.broker.util.conv matches 2 run function broker:util/conversion/demote/silver
execute if score token_type zz.broker.util.conv matches 3 run function broker:util/conversion/demote/gold
execute if score token_type zz.broker.util.conv matches 4 run function broker:util/conversion/demote/platinum
execute if score token_type zz.broker.util.conv matches 5 run function broker:util/conversion/demote/mithril

# --- Reset Player --- #
advancement revoke @s only broker:util/conversion/trigger_demote

scoreboard players remove .num_entries zz.broker.uservar.conv.demote 1
scoreboard players set @s zz.broker.uservar.conv.demote 0

# --- Handle Logic for Smart Automerge --- #

execute if score @s zz.broker.uservar.setting.automerge.mode matches 2 run \
    function broker:util/automerge/pause

# --- Cleanup --- #
execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    scoreboard objectives remove zz.broker.util.conv

execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    execute unless score .num_entries zz.broker.uservar.conv.demote matches 1.. run \
        scoreboard objectives remove zz.broker.uservar.conv.demote