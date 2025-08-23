
# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/parse/parse_content","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

# Ensure that the child node knows it's own location
$data modify storage datapack:broker process.trade_table.table.$(path).path set from storage datapack:broker process.trade_table.path

$execute store result score .node_type zz.broker.util.trade_table run data get storage datapack:broker process.trade_table.table.$(path).type
$execute store result score .node_level zz.broker.util.trade_table run data get storage datapack:broker process.trade_table.table.$(path).level

        # Log Output
        $execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                {"text":" - Entering node: $(path) {","color":"aqua"},\
                {"nbt":"process.trade_table.table.$(path).name","storage":"datapack:broker","interpret":false},\
                {"text":"}","color":"aqua"}\
                ]

        # Log Output
        execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                {"text":" - Type: ","color":"aqua"},\
                {"score":{"name":".node_type","objective":"zz.broker.util.trade_table"}},\
                ]

        # Log Output
        execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                {"text":" - Level: ","color":"aqua"},\
                {"score":{"name":".node_level","objective":"zz.broker.util.trade_table"}},\
                ]

$execute if score .node_type zz.broker.util.trade_table matches 0 run function broker:util/trade_table/parse/parse_entry with storage datapack:broker process.trade_table.table.$(path)
$execute if score .node_type zz.broker.util.trade_table matches 1 run function broker:util/trade_table/parse/parse_pool with storage datapack:broker process.trade_table.table.$(path)
$execute if score .node_type zz.broker.util.trade_table matches 2 run function broker:util/trade_table/parse/parse_list with storage datapack:broker process.trade_table.table.$(path)
$execute if score .node_type zz.broker.util.trade_table matches 3 run function broker:util/trade_table/parse/parse_empty with storage datapack:broker process.trade_table.table.$(path)

# Child node should now forget it's own location (in case it changes between runs)
$data remove storage datapack:broker process.trade_table.table.$(path).path

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/parse/parse_content","color":"#006600"}]
# ---------------------------------------------------------------------------------------