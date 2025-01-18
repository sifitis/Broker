
# Promote silver token to gold

item replace entity @s weapon.offhand with air
execute unless score inv_full zz.broker.util.conv matches 1 run loot give @s loot broker:token_gold
execute if score inv_full zz.broker.util.conv matches 1 at @s run loot spawn ~ ~ ~ loot broker:token_gold
function broker:util/sound_effect/convert