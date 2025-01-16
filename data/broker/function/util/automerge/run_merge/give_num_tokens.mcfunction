
# args: [count] The number of tokens to give
#        [type_sts] The type (copper, silver, etc) of the token

$scoreboard players set .quantity_token_give zz.broker.util $(count)
$loot give @s loot broker:util/num_token_$(type_str)