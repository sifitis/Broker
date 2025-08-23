
# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/parse/parse_pool/select_index","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

# Actually generate the index
scoreboard objectives add zz.broker.util.select_weighted_index dummy
$data modify storage datapack:broker process.generic.select_weighted_index.weight_list set from storage datapack:broker process.trade_table.table.$(path).weight_list
function broker:util/generic/select_weighted_index
$data modify storage datapack:broker process.trade_table.table.$(path).index set from storage datapack:broker process.generic.select_weighted_index.index

$function broker:util/trade_table/parse/parse_pool/select_index/parse_child_index with storage datapack:broker process.trade_table.table.$(path)

# iterate index
$scoreboard players add .rolls_done zz.broker.parselevel_$(level) 1
$execute store result storage datapack:broker process.trade_table.table.$(path).index byte 1.0 run \
    scoreboard players get .rolls_done zz.broker.parselevel_$(level)

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/parse/parse_pool/select_index","color":"#006600"}]
# ---------------------------------------------------------------------------------------