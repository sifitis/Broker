# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":"driver : ","color":"#777777"},\
        {"selector":"@s","color":"#777777"},\
        {"text":" > broker:util/automerge/run_merge [","color":"#00AA00"},\
        {"selector":"@a[scores={zz.broker.uservar.automerge.flag=1..}]","color":"red"},\
        {"text":"]","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

scoreboard objectives add zz.broker.util.automerge.merge dummy 

# Get the current state of the tokens
execute store result score C0 zz.broker.util.automerge.merge run clear @s minecraft:player_head[minecraft:custom_data~{broker:{type:1b,is_token:1b}}] 0
execute store result score S0 zz.broker.util.automerge.merge run clear @s minecraft:player_head[minecraft:custom_data~{broker:{type:2b,is_token:1b}}] 0
execute store result score G0 zz.broker.util.automerge.merge run clear @s minecraft:player_head[minecraft:custom_data~{broker:{type:3b,is_token:1b}}] 0
execute store result score P0 zz.broker.util.automerge.merge run clear @s minecraft:player_head[minecraft:custom_data~{broker:{type:4b,is_token:1b}}] 0
execute store result score M0 zz.broker.util.automerge.merge run clear @s minecraft:player_head[minecraft:custom_data~{broker:{type:5b,is_token:1b}}] 0

# Assume the future state will be the same
scoreboard players operation C1 zz.broker.util.automerge.merge = C0 zz.broker.util.automerge.merge
scoreboard players operation S1 zz.broker.util.automerge.merge = S0 zz.broker.util.automerge.merge
scoreboard players operation G1 zz.broker.util.automerge.merge = G0 zz.broker.util.automerge.merge
scoreboard players operation P1 zz.broker.util.automerge.merge = P0 zz.broker.util.automerge.merge
scoreboard players operation M1 zz.broker.util.automerge.merge = M0 zz.broker.util.automerge.merge

# Promote anything that will be over 64
execute if score C1 zz.broker.util.automerge.merge matches 64.. run function broker:util/automerge/run_merge/calc_c
execute if score S1 zz.broker.util.automerge.merge matches 64.. run function broker:util/automerge/run_merge/calc_s
execute if score G1 zz.broker.util.automerge.merge matches 64.. run function broker:util/automerge/run_merge/calc_g
execute if score P1 zz.broker.util.automerge.merge matches 64.. run function broker:util/automerge/run_merge/calc_p

# Initialize deltas
scoreboard players set dC zz.broker.util.automerge.merge 0
scoreboard players set dS zz.broker.util.automerge.merge 0
scoreboard players set dG zz.broker.util.automerge.merge 0
scoreboard players set dP zz.broker.util.automerge.merge 0
scoreboard players set dM zz.broker.util.automerge.merge 0

scoreboard players operation dC zz.broker.util.automerge.merge = C1 zz.broker.util.automerge.merge
scoreboard players operation dS zz.broker.util.automerge.merge = S1 zz.broker.util.automerge.merge
scoreboard players operation dG zz.broker.util.automerge.merge = G1 zz.broker.util.automerge.merge
scoreboard players operation dP zz.broker.util.automerge.merge = P1 zz.broker.util.automerge.merge
scoreboard players operation dM zz.broker.util.automerge.merge = M1 zz.broker.util.automerge.merge

scoreboard players operation dC zz.broker.util.automerge.merge -= C0 zz.broker.util.automerge.merge
scoreboard players operation dS zz.broker.util.automerge.merge -= S0 zz.broker.util.automerge.merge
scoreboard players operation dG zz.broker.util.automerge.merge -= G0 zz.broker.util.automerge.merge
scoreboard players operation dP zz.broker.util.automerge.merge -= P0 zz.broker.util.automerge.merge
scoreboard players operation dM zz.broker.util.automerge.merge -= M0 zz.broker.util.automerge.merge

# --- Debug code --- #

# tellraw @s {"text":""}

execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
    [{"text":" IN: [ ","color":"aqua"},\
    {"score":{"name":"C0","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"S0","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"G0","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"P0","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"M0","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" ]","color":"aqua"}\
]

execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
    [{"text":"  +: [ ","color":"aqua"},\
    {"score":{"name":"dC","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"dS","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"dG","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"dP","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"dM","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" ]","color":"aqua"}\
]

execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
    [{"text":"OUT: [ ","color":"aqua"},\
    {"score":{"name":"C1","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"S1","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"G1","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"P1","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" | ","color":"aqua"},\
    {"score":{"name":"M1","objective":"zz.broker.util.automerge.merge"},"color":"aqua"},{"text":" ]","color":"aqua"}\
]

# tellraw @s {"text":""}

execute unless score dC zz.broker.util.automerge.merge matches 0 run \
    function broker:util/automerge/run_merge/adjust_token {type_num:1,type_str:"copper",type_char:"C"}

execute unless score dS zz.broker.util.automerge.merge matches 0 run \
    function broker:util/automerge/run_merge/adjust_token {type_num:2,type_str:"silver",type_char:"S"}

execute unless score dG zz.broker.util.automerge.merge matches 0 run \
    function broker:util/automerge/run_merge/adjust_token {type_num:3,type_str:"gold",type_char:"G"}

execute unless score dP zz.broker.util.automerge.merge matches 0 run \
    function broker:util/automerge/run_merge/adjust_token {type_num:4,type_str:"platinum",type_char:"P"}

execute unless score dM zz.broker.util.automerge.merge matches 0 run \
    function broker:util/automerge/run_merge/adjust_token {type_num:5,type_str:"mithril",type_char:"M"}

# Set cooldown
scoreboard players operation @s zz.broker.uservar.util.cooldown = .automerge_cooldown zz.broker.globalvar.settings
scoreboard players set @s zz.broker.uservar.automerge.flag 0

# --- Cleanup --- #
execute if score .do_garbage_collection zz.broker.uservar.automerge.flag matches 1 run \
    execute unless score .num_entries zz.broker.uservar.automerge.flag matches 1.. run \
        scoreboard objectives remove zz.broker.uservar.automerge.flag

execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    scoreboard objectives remove zz.broker.util.automerge.merge

execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    data remove storage datapack:broker process.automerge 

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":"driver : ","color":"#777777"},\
        {"selector":"@s","color":"#777777"},\
        {"text":" < broker:util/automerge/run_merge","color":"#006600"}]
# ---------------------------------------------------------------------------------------