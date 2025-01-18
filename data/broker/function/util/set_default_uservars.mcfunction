

# --- Conversion Pop Mute --- #
execute as @a unless entity @s[scores={zz.broker.uservar.setting.conv.mute=-2147483648..2147483647}] run \
    scoreboard players set @s zz.broker.uservar.setting.conv.mute 0

# --- Automerge Mode --- #
execute as @a unless entity @s[scores={zz.broker.uservar.setting.automerge.mode=-2147483648..2147483647}] run \
    scoreboard players set @s zz.broker.uservar.setting.automerge.mode 0

# --- Automerge Smartmode Timeout --- #
execute as @a unless entity @s[scores={zz.broker.uservar.setting.automerge.timeout=-2147483648..2147483647}] run \
    scoreboard players set @s zz.broker.uservar.setting.automerge.timeout 2400

# --- Automerge Smartmode Strikes --- #
# *This is the number of manual token promotions needed to abort an automerge pause
execute as @a unless entity @s[scores={zz.broker.uservar.setting.automerge.strikes=-2147483648..2147483647}] run \
    scoreboard players set @s zz.broker.uservar.setting.automerge.strikes 1

# --- Automerge Cooldown --- #
execute as @a unless entity @s[scores={zz.broker.uservar.util.cooldown=-2147483648..2147483647}] run \
    scoreboard players set @s zz.broker.uservar.util.cooldown 0

# --- Flag the player as not being new (and thus having defaults) --- #
scoreboard players set @s zz.broker.uservar.setting.not_new 1