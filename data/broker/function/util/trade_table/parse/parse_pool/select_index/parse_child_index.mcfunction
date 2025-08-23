# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/parse/parse_pool/select_index/parse_child_index","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

# This function is a helper for select_index that actually moves to the child node,
#   since select_index doesn't have the "index" macro object yet.

# Give child node path to program
$data modify storage datapack:broker process.trade_table.path set value "$(path).contents[$(index)]"

# Parse child node
function broker:util/trade_table/parse/parse_content with storage datapack:broker process.trade_table

# Remove child from future selection
$data remove storage datapack:broker process.trade_table.table.$(path).contents[$(index)]
$data remove storage datapack:broker process.trade_table.table.$(path).weight_list[$(index)]

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/parse/parse_pool/select_index/parse_child_index","color":"#006600"}]
# ---------------------------------------------------------------------------------------