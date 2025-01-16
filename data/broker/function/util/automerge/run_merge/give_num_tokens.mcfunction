
# args: [count] The number of tokens to give
#        [type_sts] The type (copper, silver, etc) of the token

$say Giving $(count) tokens of type $(type_str)

$scoreboard players set .quantity_token_give zz.broker.util $(count)
$loot give @s loot broker:util/num_token_$(type_str)