
# Gives a single copper token to self

# give @s player_head[\
#     custom_name='[{"text":"     ❂ ","italic":false,"color":"#ba5f2f"},{"text":"Copper Token","color":"#666666"},{"text":" ❂"}]',\
#     profile={\
#         id:[I; -639900307, 1335050392, -1447866749, -737928481],\
#         properties:[\
#             {name:"textures",\
#             value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWMyMzlmMWVlMDA0MWJjNmY3NTU5YzhhYTljYWZkZWJkY2VjZTZmMjZkMDBhODYwMzY1ZDQyOWMxMjRlMjI0YyJ9fX0="}\
#         ]\
#     },\
#     lore=[\
#         '[{"text":"------------------------","italic":false,"color":"#ba5f2f"}]',\
# 		'[{"text":"Value:","italic":false,"color":"#666666"},{"text":" "},{"text":"1 cp","color":"gray"}]',\
# 		'[{"text":""}]',\
# 		'[{"text":"Offhand:","italic":false,"color":"#666666"}]',\
# 		'[{"text":"","italic":false,"color":"gray"},{"text":" 64 "},{"text":"❂","color":"#ba5f2f"},{"text":"Copper ⇒"},{"text":" ","bold":true},{"text":" ","bold":true},"1 ",{"text":"❂","color":"#d1ccbc"},{"text":"Silver"}]'\
# 	]\
# ] 1

loot give @s loot broker:token_copper
playsound minecraft:entity.item.pickup