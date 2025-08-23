# Set entry to be the weight of the first index
execute store result score .entry zz.broker.util.select_weighted_index run \
    data get storage datapack:broker process.generic.select_weighted_index.weight_list_select[0]

# Add to the .sum variable
scoreboard players operation .sum zz.broker.util.select_weighted_index += \
    .entry zz.broker.util.select_weighted_index

# If the .sum is greater than .rand (but wasn't the previous iteration) then that means that .rand falls in this box.
execute if score .sum zz.broker.util.select_weighted_index > .rand zz.broker.util.select_weighted_index run \
    return 1

# If the entry failed, then delete it and move on to the next one
data remove storage datapack:broker process.generic.select_weighted_index.weight_list_select[0]
scoreboard players add .index zz.broker.util.select_weighted_index 1

# Loop
execute if data storage datapack:broker process.generic.select_weighted_index.weight_list_select[0] run \
    function broker:util/generic/select_weighted_index/select_loop