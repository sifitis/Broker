# {
# 	type: 0b, # Entry
# 	level: #b,
# 	name: ""
# 	trade_data:{
# 		#TRADEDATA
# 	},
# 	predicate: {},
# 	weight: i
# }

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/parse/parse_entry","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

$data modify storage datapack:broker process.trade_table.output append value $(trade_data)

        # Log Output
        $execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                {"text":' - Trade Found:  $(trade_data)',"color":"aqua"},\
                ]

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/parse/parse_entry","color":"#006600"}]
# ---------------------------------------------------------------------------------------