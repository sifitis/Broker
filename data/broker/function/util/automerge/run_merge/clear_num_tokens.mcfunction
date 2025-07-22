
# args: [count] The number of tokens to clear
#        [type_num] The type (1-5) of the token

# ---------------------------------------------------------------------------------------
# Log Output
$execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"selector":"@s","color":"#777777"},\
        {"text":" > broker:util/automerge/run_merge/clear_num_tokens","color":"#00AA00"},\
        {"text":" [count:$(count)] [type_num:$(type_num)] [type_str:$(type_str)]","color":"#00AA88"}\
        ]
# ---------------------------------------------------------------------------------------

$clear @s minecraft:player_head[minecraft:custom_data~{broker:{type:$(type_num)b,is_token:1b}}] $(count)

# Log Output
$execute if score .log_output zz.broker.globalvar.settings matches 1 run \
        tellraw @a [\
            {"text":" - Cleared $(count) $(type_str) tokens from ","color":"aqua"},\
            {"selector":"@s","color":"red"},\
            {"text":".","color":"aqua"}\
        ]

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"selector":"@s","color":"#777777"},{"text":" < broker:util/automerge/run_merge/clear_num_tokens","color":"#006600"}]
# ---------------------------------------------------------------------------------------