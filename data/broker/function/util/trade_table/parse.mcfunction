# This is the entry code for the table parsing function.
# It expects to recieve a table as a "tablepath" var

$data modify storage datapack:broker process.trade_table.table set from storage datapack:broker $(tablepath)

scoreboard objectives add SB_type dummy
data modify storage datapack:broker process.trade_table.path set value "root"

function broker:util/trade_table/parse/parse_content with storage datapack:broker process.trade_table.table