
scoreboard objectives add money_count dummy

execute store result score copper money_count run clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Copper Token\"}"}} 0
execute store result score silver money_count run clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Silver Token\"}"}} 0
execute store result score gold money_count run clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Gold Token\"}"}} 0
execute store result score platinum money_count run clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Platinum Token\"}"}} 0

execute unless score copper money_count matches 0..63 run function convert:phil_stone/copper_to_silver
execute unless score silver money_count matches 0..63 run function convert:phil_stone/silver_to_gold
execute unless score gold money_count matches 0..63 run function convert:phil_stone/gold_to_platinum
execute unless score platinum money_count matches 0..63 run function convert:phil_stone/platinum_to_mithril

execute store result score copper money_count run clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Copper Token\"}"}} 0
execute store result score silver money_count run clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Silver Token\"}"}} 0
execute store result score gold money_count run clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Gold Token\"}"}} 0
execute store result score platinum money_count run clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Platinum Token\"}"}} 0

scoreboard objectives remove money_count