# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/generic/select_weighted_index/sum_loop","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

# Returns the total weight of the entire weight_list

execute store result score .entry zz.broker.util.select_weighted_index run \
    data get storage datapack:broker process.generic.select_weighted_index.weight_list_sum[0]

scoreboard players operation .total_weight zz.broker.util.select_weighted_index += \
    .entry zz.broker.util.select_weighted_index

data remove storage datapack:broker process.generic.select_weighted_index.weight_list_sum[0]

# next loop
execute if data storage datapack:broker process.generic.select_weighted_index.weight_list_sum[0] run function broker:util/generic/select_weighted_index/sum_loop

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/generic/select_weighted_index/sum_loop","color":"#006600"}]
# ---------------------------------------------------------------------------------------