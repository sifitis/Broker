
# Handle manual conversion
execute as @a[scores={zz.broker.uservar.conv.promote=1..}] run function broker:util/conversion/promote
execute as @a[scores={zz.broker.uservar.conv.demote=1..}] run function broker:util/conversion/demote

# Open user menu when trigger score is not 0
execute as @a as @s unless score @s broker matches 0 run function broker:ui/start

# Default uservars #
execute as @a unless entity @s[scores={zz.broker.uservar.setting.not_new=-2147483648..2147483647}] run function broker:util/set_default_uservars

# Automerge #
execute as @a[scores={zz.broker.uservar.util.cooldown=1..2147483647}] run scoreboard players remove @s zz.broker.uservar.util.cooldown 1
execute as @a[scores={zz.broker.uservar.automerge.flag=1..2147483647}] run function broker:util/automerge/run_merge

execute as @a[scores={zz.broker.uservar.util.automerge.pause.cooldown=1..}] run scoreboard players remove @s zz.broker.uservar.util.automerge.pause.cooldown 1
execute as @a[\
    scores={\
        zz.broker.uservar.util.automerge.pause.cooldown=..0,\
        zz.broker.uservar.util.automerge.is_paused=1..\
    }] run function broker:util/automerge/unpause
