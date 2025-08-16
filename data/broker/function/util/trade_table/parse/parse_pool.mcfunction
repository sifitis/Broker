
# {	
# 	type: 1b,
# 	level: #b,
# 	name: "",
# 	num_entries: #b,
# 	sub_total_weight: #i,
# 	rolls: #b,
# 	predicate: {},
# 	weight_list:[],
# 	contents:[],
# 	weight: i
# }

#Pre-loop
$scoreboard objectives add zz.broker.parselevel_$(level) dummy
$scoreboard players set .num_entries zz.broker.parselevel_$(level) $(num_entries)
$scoreboard players set .rolls zz.broker.parselevel_$(level) $(rolls)
$execute store result storage datapack:broker process.trade_table.table.$(path).index byte 1.0 run scoreboard players get .index zz.broker.parselevel_$(level)

#Loop
$function broker:util/trade_table/parse/parse_pool/loop with storage datapack:broker process.trade_table.table.$(path)

#Post-loop
$data remove storage datapack:broker process.trade_table.table.$(path).index
$scoreboard objectives remove zz.broker.parselevel_$(level)