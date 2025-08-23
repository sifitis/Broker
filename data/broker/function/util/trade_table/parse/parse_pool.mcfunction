
# {	
# 	type: 1b,
# 	level: #b,
# 	name: "",
# 	num_entries: #b,
# 	rolls: #b,
# 	predicate: {},
# 	weight_list:[],
# 	contents:[],
# 	weight: i
# }

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/parse/parse_pool","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

#Pre-loop
$scoreboard objectives add zz.broker.parselevel_$(level) dummy
$scoreboard players set .num_entries zz.broker.parselevel_$(level) $(num_entries)
$scoreboard players set .rolls zz.broker.parselevel_$(level) $(rolls)
$execute store result storage datapack:broker process.trade_table.table.$(path).index byte 1.0 run scoreboard players get .index zz.broker.parselevel_$(level)

        # Log Output
        $execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                    {"text":" - Entries: ","color":"aqua"},\
                    {"score":{"name":".num_entries","objective":"zz.broker.parselevel_$(level)"}},\
                ]

        $execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                    {"text":" - Rolls: ","color":"aqua"},\
                    {"nbt":"process.trade_table.table.$(path).rolls","storage":"datapack:broker","interpret":false}\
                ]

        # $execute if score .log_output zz.broker.globalvar.settings matches 1 run \
        #         tellraw @a [\
        #             {"text":" - Path: ","color":"aqua"},\
        #             {"nbt":"process.trade_table.table.$(path).path","storage":"datapack:broker","interpret":false}\
        #         ]

#Loop
$function broker:util/trade_table/parse/parse_pool/loop with storage datapack:broker process.trade_table.table.$(path)

#Post-loop
$data remove storage datapack:broker process.trade_table.table.$(path).index
$scoreboard objectives remove zz.broker.parselevel_$(level)

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/parse/parse_pool","color":"#006600"}]
# ---------------------------------------------------------------------------------------