execute store result score .entry zz.broker.util.select_weighted_index run \
    data get storage datapack:broker process.generic.select_weighted_index.weight_list_select[0]

scoreboard players operation .sum zz.broker.util.select_weighted_index += \
    .entry zz.broker.util.select_weighted_index

execute if score .sum zz.broker.util.select_weighted_index > .rand zz.broker.util.select_weighted_index run \
    return

execute if data process.generic.select_weighted_index.weight_list_select[0] run function broker:util/generic/select_weighted_index/select_loop