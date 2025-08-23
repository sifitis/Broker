
# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/trade_table/parse/parse_list","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

#Pre-loop
$scoreboard objectives add zz.broker.parselevel_$(level) dummy
$scoreboard players set .num_entries zz.broker.parselevel_$(level) $(num_entries)
$scoreboard players set .index zz.broker.parselevel_$(level) 0
$execute store result storage datapack:broker process.trade_table.table.$(path).index byte 1.0 run scoreboard players get .index zz.broker.parselevel_$(level)

        # Log Output
        $execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                    {"text":" - Entries: ","color":"aqua"},\
                    {"score":{"name":".num_entries","objective":"zz.broker.parselevel_$(level)"}},\
                ]

        $execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                    {"text":" - Index: ","color":"aqua"},\
                    {"nbt":"process.trade_table.table.$(path).index","storage":"datapack:broker","interpret":false}\
                ]

        # $execute if score .log_output zz.broker.globalvar.settings matches 1 run \
        #         tellraw @a [\
        #             {"text":" - Path: ","color":"aqua"},\
        #             {"nbt":"process.trade_table.table.$(path).path","storage":"datapack:broker","interpret":false}\
        #         ]

#Loop
$function broker:util/trade_table/parse/parse_list/loop with storage datapack:broker process.trade_table.table.$(path)

#Post-loop
$data remove storage datapack:broker process.trade_table.table.$(path).index
$scoreboard objectives remove zz.broker.parselevel_$(level)

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/trade_table/parse/parse_list","color":"#006600"}]
# ---------------------------------------------------------------------------------------