scoreboard players remove platinum money_count 64
scoreboard players add mithril money_count 1

clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Platinum Token\"}"}} 64
give @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Mithril Token\"}"},SkullOwner:{Id:"733fcaf1-681d-436b-9fbc-044c1c970466",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE0ZmZmMmZiMjdiNTFmODZiMmM0YjIyYTM4MTAxNGRlMzJjMTNjMTJhOGY5ODlhMTg2ZmUwMzg1ZGExOWQzYyJ9fX0="}]}}} 1

execute unless score platinum money_count matches 0..63 run function convert:phil_stone/platinum_to_mithril