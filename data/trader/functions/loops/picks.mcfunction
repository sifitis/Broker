function math:random
scoreboard players operation O m_random %= Size enh_trader
scoreboard players operation Cycle enh_trader = O m_random

execute if score Cycle enh_trader matches 1.. run function trader:loops/cycle

data modify entity @s Offers.Recipes prepend from storage trader:temp Data.Table[0].Pool[0]
data remove storage trader:temp Data.Table[0].Pool[0]
scoreboard players remove Size enh_trader 1
scoreboard players remove Pick enh_trader 1

execute if score Pick enh_trader matches 1.. run function trader:loops/picks