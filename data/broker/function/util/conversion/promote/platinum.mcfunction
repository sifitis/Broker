
# Promote platinum token to mithril

item replace entity @s weapon.offhand with air
execute unless score inv_full zz.broker.util.conv matches 1 run loot give @s loot broker:token_mithril
execute if score inv_full zz.broker.util.conv matches 1 at @s run loot spawn ~ ~ ~ loot broker:token_mithril
function broker:util/sound_effect/convert