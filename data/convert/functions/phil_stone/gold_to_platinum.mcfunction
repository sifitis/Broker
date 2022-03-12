scoreboard players remove gold money_count 64
scoreboard players add platinum money_count 1

clear @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Gold Token\"}"}} 64
give @s minecraft:player_head{display:{Name:"{\"color\":\"gray\",\"text\":\"Platinum Token\"}"},SkullOwner:{Id:"c735291e-650c-4085-a345-b8c49f8330d6",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzE0ZmNkNGU0OTI0MWJlZThjYTA5MWRiNjRmODljM2U2NjllYjMzNjk5MDhlMGJjOGE0NmY3NjE0NGU1OWZjNiJ9fX0="}]}}} 1

execute unless score gold money_count matches 0..63 run function convert:phil_stone/gold_to_platinum