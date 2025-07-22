
# args: [count] The number of tokens to give
#        [type_str] The type (copper, silver, etc) of the token

# ---------------------------------------------------------------------------------------
# Log Output
$execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"selector":"@s","color":"#777777"},\
        {"text":" > broker:util/automerge/run_merge/give_num_tokens","color":"#00AA00"},\
        {"text":" [count:$(count)] [type_str:$(type_str)]","color":"#00AA88"}\
        ]
# ---------------------------------------------------------------------------------------

$scoreboard players set .quantity_token_give zz.broker.util $(count)
$loot give @s loot broker:util/num_token_$(type_str)

# Log Output
$execute if score .log_output zz.broker.globalvar.settings matches 1 run \
        tellraw @a [\
            {"text":" - Gave $(count) $(type_str) tokens to ","color":"aqua"},\
            {"selector":"@s","color":"red"},\
            {"text":".","color":"aqua"}\
        ]

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"selector":"@s","color":"#777777"},{"text":" < broker:util/automerge/run_merge/give_num_tokens","color":"#006600"}]
# ---------------------------------------------------------------------------------------