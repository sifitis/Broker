#Pre-loop
$scoreboard objectives add zz.broker.parselevel_$(level) dummy
$scoreboard players set .num_entries zz.broker.parselevel_$(level) $(num_entries)
$scoreboard players set .index zz.broker.parselevel_$(level) 0
$execute store result storage datapack:broker process.trade_table.table.$(path).index byte 1.0 run scoreboard players get .index zz.broker.parselevel_$(level)

#Loop
$function broker:util/trade_table/parse/parse_list/loop with storage datapack:broker process.trade_table.table.$(path)

#Post-loop
$data remove storage datapack:broker process.trade_table.table.$(path).index
$scoreboard objectives remove zz.broker.parselevel_$(level)