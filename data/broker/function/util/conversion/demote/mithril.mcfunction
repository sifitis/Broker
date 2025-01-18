
# Demote mithril token to platinum

item replace entity @s weapon.offhand with air
execute unless score inv_full zz.broker.util.conv matches 1 run loot give @s loot broker:util/num_token_platinum
execute if score inv_full zz.broker.util.conv matches 1 at @s run loot spawn ~ ~ ~ loot broker:util/num_token_platinum
function broker:util/sound_effect/convert