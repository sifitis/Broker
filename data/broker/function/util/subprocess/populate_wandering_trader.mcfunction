
# This is a self-running script that populates wandering trader tables when a player is near one

schedule function broker:util/subprocess/populate_wandering_trader 2s

execute at @a as @e[distance=..32,type=wandering_trader,tag=!broker-upgraded] run function broker:util/trade_table/generate/wandering_trader
execute at @a as @e[distance=..32,type=wandering_trader] run tag @s add broker-upgraded