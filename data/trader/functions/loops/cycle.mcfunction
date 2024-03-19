
data modify storage trader:temp Data.Table[0].Pool append from storage trader:temp Data.Table[0].Pool[0]
data remove storage trader:temp Data.Table[0].Pool[0]
scoreboard players remove Cycle enh_trader 1

execute if score Cycle enh_trader matches 1.. run function trader:loops/cycle