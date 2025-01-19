
$execute unless entity @e[type=player,distance=..16] run tp @e[type=villager,tag=token_merchant,distance=..16,tag=$(type)] ~ -100 ~

$execute unless entity @e[type=villager,tag=token_merchant,tag=$(type),distance=..16] run \
    function broker:util/summon/villager/$(type) with storage datapack:broker data.component_manifest