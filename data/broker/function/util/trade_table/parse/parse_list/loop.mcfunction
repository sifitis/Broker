# Bail out if there aren't any entries so it doesn't crash
$execute if score .num_entries zz.broker.parselevel_$(level) matches 0 run return

# Give child node path to program
$data modify storage datapack:broker process.trade_table.path set value "$(path).contents[$(index)]"

# Parse child node
$function broker:util/trade_table/parse/parse_content with storage datapack:broker process.trade_table.table.$(path).contents[$(index)]

# iterate index
$scoreboard players add .index zz.broker.parselevel_$(level) 1
$execute store result storage datapack:broker process.trade_table.table.$(path).index byte 1.0 run \
    scoreboard players get .index zz.broker.parselevel_$(level)

$execute if score .index zz.broker.parselevel_$(level) < .num_entries zz.broker.parselevel_$(level) run \
    function broker:util/trade_table/parse/parse_list/loop with storage datapack:broker process.trade_table.table.$(path)
