
# # Gives a single platinum token to self

# give @p player_head[\
#     custom_name='[{"text":"     ❂ ","italic":false,"color":"#dcf7f6"},{"text":"Platinum Token","color":"#666666"},{"text":" ❂"}]',\
#     profile={\
#         id:[I; -952817378, 1695301765, -1555711804, -1618792234],\
#         properties:[\
#             {name:"textures",\
#             value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzE0ZmNkNGU0OTI0MWJlZThjYTA5MWRiNjRmODljM2U2NjllYjMzNjk5MDhlMGJjOGE0NmY3NjE0NGU1OWZjNiJ9fX0="}\
#         ]\
#     },\
#     lore=[\
#         '[{"text":"------------------------","italic":false,"color":"#dcf7f6"}]',\
# 		'[{"text":"Value:","italic":false,"color":"#666666"},{"text":" "},{"text":"262,144 cp","color":"gray"}]',\
# 		'[{"text":""}]',\
# 		'[{"text":"Offhand:","italic":false,"color":"#666666"}]',\
# 		'[{"text":"","italic":false,"color":"gray"},{"text":" ","bold":true},{"text":" ","bold":true},{"text":"1 "},{"text":"❂","color":"#dcf7f6"},{"text":"Platinum ⇒ 64 "},{"text":"❂","color":"#ffde4d"},{"text":"Gold"}]',\
# 		'[{"text":"","italic":false,"color":"gray"},{"text":" 64 "},{"text":"❂","color":"#dcf7f6"},{"text":"Platinum ⇒"},{"text":" ","bold":true},{"text":" ","bold":true},"1 ",{"text":"❂","color":"#9ec0ff"},{"text":"Mithril"}]'\
#     ]\
# ] 1

loot give @s loot broker:token_platinum
playsound minecraft:entity.item.pickup