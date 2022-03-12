scoreboard players remove copper money_count 64
scoreboard players add silver money_count 1

clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Copper Token\"}"}} 64
give @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Silver Token\"}"},SkullOwner:{Id:"5479c030-144b-4e9c-8b61-3e3713eb9d23",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTVkNDQ5ZTE0OTZmYTY2ZmE4ZjM1MDhmMTBmZDkwYWM1YjE1YTU1MmVjMTAyYTkyNmQyMmFiZDE1YjU3ODRhNSJ9fX0="}]}}} 1

execute unless score copper money_count matches 0..63 run function convert:phil_stone/copper_to_silver