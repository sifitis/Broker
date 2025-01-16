
# This is a self-running script that ensures that the broker trigger is always active on all players

schedule function broker:util/subprocess/trigger_enabler 1s
scoreboard players enable @a broker