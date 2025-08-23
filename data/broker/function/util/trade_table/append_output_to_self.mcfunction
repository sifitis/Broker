
# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/append_output_to_self","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

scoreboard objectives add zz.broker.util.trade_table.append_output_to_self dummy

execute store result score .num_entries zz.broker.util.trade_table.append_output_to_self run \
    data get storage datapack:broker process.trade_table.output

# Bail out if there aren't any entries so it doesn't crash

        # Log Output
        execute if score .log_output zz.broker.globalvar.settings matches 1 \
            if score .num_entries zz.broker.util.trade_table.append_output_to_self matches 0 run \
                tellraw @a [\
                {"text":" - Aborting list, no entries.","color":"aqua"},\
                ]

execute if score .num_entries zz.broker.util.trade_table.append_output_to_self matches 0 run return 0

# Call loop
function broker:util/trade_table/append_output_to_self/loop

# Cleanup
execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    scoreboard objectives remove zz.broker.util.trade_table.append_output_to_self

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/append_output_to_self","color":"#006600"}]
# ---------------------------------------------------------------------------------------