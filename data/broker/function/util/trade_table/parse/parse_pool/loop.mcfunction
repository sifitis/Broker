# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/parse/parse_pool/loop","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

# Bail out if there aren't any entries so it doesn't crash

        # Log Output
        $execute if score .log_output zz.broker.globalvar.settings matches 1 \
            if score .num_entries zz.broker.parselevel_$(level) matches 0 run \
                tellraw @a [\
                {"text":" - Aborting list, no entries.","color":"aqua"},\
                ]

$execute if score .num_entries zz.broker.parselevel_$(level) matches 0 run return 0

# Do actual pool things
$function broker:util/trade_table/parse/parse_pool/select_index with storage datapack:broker process.trade_table.table.$(path)

$execute if score .rolls_done zz.broker.parselevel_$(level) < .rolls zz.broker.parselevel_$(level) run \
     function broker:util/trade_table/parse/parse_pool/loop with storage datapack:broker process.trade_table.table.$(path)

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/parse/parse_pool/loop","color":"#006600"}]
# ---------------------------------------------------------------------------------------