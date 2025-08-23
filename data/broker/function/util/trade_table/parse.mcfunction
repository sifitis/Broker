# This is the entry code for the table parsing function.
# It expects to recieve a table as a "tablepath" var

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/parse","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

    # Log Output
    $execute if score .log_output zz.broker.globalvar.settings matches 1 run \
            tellraw @a [\
                {"text":" - Table:  $(tablepath)","color":"aqua"},\
            ]

# Clear old output table
data remove storage datapack:broker process.trade_table.output

# Copy trade table into the process subcategory
$data modify storage datapack:broker process.trade_table.table set from storage datapack:broker $(tablepath)

# Prepare to enter into the root level node
scoreboard objectives add zz.broker.util.trade_table dummy
data modify storage datapack:broker process.trade_table.path set value "root"

function broker:util/trade_table/parse/parse_content with storage datapack:broker process.trade_table

# --- Cleanup --- #
execute if score .do_garbage_collection zz.broker.globalvar.settings matches 1 run \
    scoreboard objectives remove zz.broker.util.trade_table

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/parse","color":"#006600"}]
# ---------------------------------------------------------------------------------------