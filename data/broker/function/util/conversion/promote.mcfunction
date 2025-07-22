
# --- Create scoreboards and collect data --- #
scoreboard objectives add zz.broker.util.conv dummy
execute store result score token_type zz.broker.util.conv run data get entity @s equipment.offhand.components."minecraft:custom_data".broker.type
execute store success score inv_full zz.broker.util.conv run data get entity @s Inventory[35]

execute if score token_type zz.broker.util.conv matches 1 run function broker:util/conversion/promote/copper
execute if score token_type zz.broker.util.conv matches 2 run function broker:util/conversion/promote/silver
execute if score token_type zz.broker.util.conv matches 3 run function broker:util/conversion/promote/gold
execute if score token_type zz.broker.util.conv matches 4 run function broker:util/conversion/promote/platinum

# --- Reset Player --- #
advancement revoke @s only broker:util/conversion/trigger_promote

scoreboard players remove .num_entries zz.broker.uservar.conv.promote 1
scoreboard players set @s zz.broker.uservar.conv.promote 0

# --- Handle Logic for Smart Automerge --- #

execute if score @s zz.broker.uservar.setting.automerge.mode matches 2 \
    if score @s zz.broker.uservar.util.automerge.is_paused matches 1.. \
        if score @s zz.broker.uservar.setting.automerge.strikes matches ..999999 \
            if score @s zz.broker.uservar.util.automerge.pause.strikes < @s zz.broker.uservar.setting.automerge.strikes run \
                function broker:util/automerge/add_strike

execute if score @s zz.broker.uservar.setting.automerge.mode matches 2 \
    if score @s zz.broker.uservar.util.automerge.is_paused matches 1.. \
        if score @s zz.broker.uservar.util.automerge.pause.strikes >= @s zz.broker.uservar.setting.automerge.strikes run \
            function broker:util/automerge/unpause

# --- Cleanup --- #
execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    scoreboard objectives remove zz.broker.util.conv

execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    execute unless score .num_entries zz.broker.uservar.conv.promote matches 1.. run \
        scoreboard objectives remove zz.broker.uservar.conv.promote