
# Actually generate the index
scoreboard objectives add zz.broker.util.select_weighted_index dummy
$data modify storage datapack:broker process.generic.select_weighted_index.weight_list set from storage datapack:broker process.trade_table.table.$(path).weight_list
$function broker:util/trade_table/parse/parse_pool/select_index/loop



# Give child node path to program
$data modify storage datapack:broker process.trade_table.path set value "$(path).contents[$(index)]"

# Parse child node
$function broker:util/trade_table/parse/parse_content with storage datapack:broker process.trade_table.table.$(path).contents[$(index)]

# iterate index
$scoreboard players add .rolls_done zz.broker.parselevel_$(level) 1
$execute store result storage datapack:broker process.trade_table.table.$(path).index byte 1.0 run \
    scoreboard players get .rolls_done zz.broker.parselevel_$(level)