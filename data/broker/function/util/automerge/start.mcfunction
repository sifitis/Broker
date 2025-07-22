# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"selector":"@s","color":"#777777"},{"text":" > broker:util/automerge/start","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

advancement revoke @s only broker:util/automerge/trigger_automerge

execute if score @s zz.broker.uservar.util.cooldown matches ..0 \
    if score @s zz.broker.uservar.setting.automerge.mode matches 1 run \
        function broker:util/automerge/flag_for_automerge

execute if score @s zz.broker.uservar.util.cooldown matches ..0 \
    if score @s zz.broker.uservar.setting.automerge.mode matches 2 \
        unless score @s zz.broker.uservar.util.automerge.is_paused matches 1 run \
            function broker:util/automerge/flag_for_automerge

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"selector":"@s","color":"#777777"},{"text":" < broker:util/automerge/start","color":"#006600"}]
# ---------------------------------------------------------------------------------------