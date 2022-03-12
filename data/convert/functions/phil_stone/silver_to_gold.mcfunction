scoreboard players remove silver money_count 64
scoreboard players add gold money_count 1

clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Silver Token\"}"}} 64
give @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Gold Token\"}"},SkullOwner:{Id:"9c2f74bc-7d8f-438c-8e15-e9914556f138",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThiOGYyMTFlZjY5NzU5OWE2M2RlOTZmMzQ4M2EyMWJmZjEzZWY4ZTJlZGM5MDk2OTUwNzY1MjgxY2ExY2NkMSJ9fX0="}]}}} 1

execute unless score silver money_count matches 0..63 run function convert:phil_stone/silver_to_gold