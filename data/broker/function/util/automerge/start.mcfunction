
advancement revoke @s only broker:util/automerge/trigger_automerge

execute if score @s zz.broker.uservar.util.cooldown matches ..0 \
    if score @s zz.broker.uservar.setting.automerge.mode matches 1 run \
        function broker:util/automerge/flag_for_automerge

execute if score c matches ..0 \
    if score @s zz.broker.uservar.setting.automerge.mode matches 2 \
        unless score @s zz.broker.uservar.util.automerge.is_paused matches 1 run \
            function broker:util/automerge/flag_for_automerge