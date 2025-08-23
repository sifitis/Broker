# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/generate/wandering_trader","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

# This function is executed by a wandering trader to generate it's additional trade table


# Bail out if there aren't any entries so it doesn't crash
        # Log Output
        execute if score .log_output zz.broker.globalvar.settings matches 1 \
            unless data storage datapack:broker data.trade_tables.wandering_trader.root run \
                tellraw @a [\
                {"text":" - Aborting process, no wander trader trade table exists.","color":"aqua"},\
                ]

execute unless data storage datapack:broker data.trade_tables.wandering_trader.root run \
        return 0

# Generate table
function broker:util/trade_table/parse {tablepath:"data.trade_tables.wandering_trader"}

# Append table to self
function broker:util/trade_table/append_output_to_self

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/generate/wandering_trader","color":"#006600"}]
# ---------------------------------------------------------------------------------------