# Bail out if there aren't any entries so it doesn't crash
$execute if score .num_entries zz.broker.parselevel_$(level) matches 0 run return

# Do actual pool things
$function broker:util/trade_table/parse/parse_pool/select_index with storage datapack:broker process.trade_table.table.$(path)

$execute if score .rolls_done zz.broker.parselevel_$(level) < .rolls zz.broker.parselevel_$(level) run \
    function broker:util/trade_table/parse/parse_pool/loop with storage datapack:broker process.trade_table.table.$(path)
