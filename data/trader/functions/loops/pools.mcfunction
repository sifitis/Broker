
execute store result score Size enh_trader run data get storage trader:temp Data.Table[0].Size
execute store result score Pick enh_trader run data get storage trader:temp Data.Table[0].Pick
execute store result score Chance enh_trader run data get storage trader:temp Data.Table[0].Chance

function math:random
scoreboard players operation O m_random %= CONST_10e3 m_constants
scoreboard players operation P enh_trader = O m_random

execute if score Pick enh_trader matches 1.. if score P enh_trader < Chance enh_trader run function trader:loops/picks

data remove storage trader:temp Data.Table[0]
scoreboard players remove TableSize enh_trader 1

execute if score TableSize enh_trader matches 1.. run function trader:loops/pools
