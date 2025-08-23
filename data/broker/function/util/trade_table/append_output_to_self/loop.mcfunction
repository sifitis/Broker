
# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/append_output_to_self/loop","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

data modify entity @s Offers.Recipes prepend from storage datapack:broker process.trade_table.output[0]
data remove storage datapack:broker process.trade_table.output[0]

execute store result score .num_entries zz.broker.util.trade_table.append_output_to_self run \
    data get storage datapack:broker process.trade_table.output

        # Log Output
        execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                    {"text":" - Entries: ","color":"aqua"},\
                    {"score":{"name":".num_entries","objective":"zz.broker.util.trade_table.append_output_to_self"}},\
                ]

execute if score .num_entries zz.broker.util.trade_table.append_output_to_self matches 1.. run \
    function broker:util/trade_table/append_output_to_self/loop

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/append_output_to_self/loop","color":"#006600"}]
# ---------------------------------------------------------------------------------------