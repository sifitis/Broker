## THIS IS THE PRIMARY DRIVER FOR ALL TICK-BASED FUNCTIONS ##

execute if score CLT chainLengthTest matches 1.. run title @a actionbar {"text":"","color":"red","extra":[{"text":"[CRITICAL ERROR] SifTech Economy- Max command chain length reached!"}]}
scoreboard players set CLT chainLengthTest 1

execute if score conversion config matches 1 run function convert:convert
execute if score magic config matches 1 run function magic:detect_scroll
execute if score magic config matches 1 run function magic:cooldown_driver
execute if score token_repair config matches 1 run function convert:repair_tokens

scoreboard players set CLT chainLengthTest 0