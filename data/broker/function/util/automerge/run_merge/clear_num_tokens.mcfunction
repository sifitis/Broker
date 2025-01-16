
# args: [count] The number of tokens to clear
#        [type_num] The type (1-5) of the token

$say Clearing $(count) tokens of type $(type_str)

$clear @s minecraft:player_head[minecraft:custom_data={broker:{type:$(type_num)b,is_token:1b}}] $(count)