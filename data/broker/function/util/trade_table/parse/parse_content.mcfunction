
# Ensure that the child node knows it's own location
$data modify storage datapack:broker process.trade_table.table.$(path).path set from storage datapack:broker process.trade_table.path

$scoreboard players set type zz.broker.util.type $(type)
$execute if score type zz.broker.util.type matches 0 run function broker:util/trade_table/parse/parse_entry with storage datapack:broker process.trade_table.table.$(path)
$execute if score type zz.broker.util.type matches 1 run function broker:util/trade_table/parse/parse_pool with storage datapack:broker process.trade_table.table.$(path)
$execute if score type zz.broker.util.type matches 2 run function broker:util/trade_table/parse/parse_list with storage datapack:broker process.trade_table.table.$(path)

# Child node should now forget it's own location (in case it changes between runs)
$data remove storage datapack:broker process.trade_table.table.$(path).path