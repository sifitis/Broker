scoreboard objectives add enh_trader dummy
data modify storage trader:temp Data set from storage trader:table Data
execute store result score TableSize enh_trader run data get storage trader:temp Data.TableSize

execute if score TableSize enh_trader matches 1.. run function trader:loops/pools

scoreboard objectives remove enh_trader
tag @s add enhanced