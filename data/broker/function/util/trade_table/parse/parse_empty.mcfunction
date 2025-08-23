# # Empty object
# {
# 	type: 3b,
#   level: 0b,
# 	weight: i
# }

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/parse/parse_empty","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/parse/parse_empty","color":"#006600"}]
# ---------------------------------------------------------------------------------------
return 1

