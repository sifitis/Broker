
# This function requires there be a list of integers in process.generic.select_weighted_index.weight_list

scoreboard objectives add zz.broker.util.select_weighted_index dummy

# Get the number of entries
execute store result storage datapack:broker process.generic.select_weighted_index.num_entries num int 1.0 run \
    data get storage datapack:broker process.generic.select_weighted_index.weight_list

execute store result score .num_entries zz.broker.util.select_weighted_index run \
    data get storage datapack:broker process.generic.select_weighted_index.num_entries

# Check for easy returns
execute if score .num_entries zz.broker.util.select_weighted_index matches 0 run \
    tellraw @a {"text":"Error in broker:util\select_weighted_index- Attempted to parse list with 0 entries.","color":"red"}
execute if score .num_entries zz.broker.util.select_weighted_index matches 0 run return fail

execute if score .num_entries zz.broker.util.select_weighted_index matches 1 run \
    data modify storage datapack:broker process.generic.select_weighted_index.index set value 0
execute if score .num_entries zz.broker.util.select_weighted_index matches 1 run return

# return .total_weight scoreboard value and store it
data modify storage datapack:broker process.generic.select_weighted_index.weight_list_sum set from \
    storage datapack:broker process.generic.select_weighted_index.weight_list

function broker:util/generic/select_weighted_index/sum_loop
# execute store result storage datapack:broker process.generic.select_weighted_index.total_weight num int 1.0 run \
#     scoreboard players get .total_weight zz.broker.util.select_weighted_index

# generate random index
function broker:util/generic/select_weighted_index/gen_random_index with storage datapack:broker process.generic.select_weighted_index

# Find the right index
scoreboard players set .index zz.broker.util.select_weighted_index 0
scoreboard players set .sum zz.broker.util.select_weighted_index 0

data modify storage datapack:broker process.generic.select_weighted_index.weight_list_select set from \
    storage datapack:broker process.generic.select_weighted_index.weight_list

execute store result storage datapack:broker process.generic.select_weighted_index.index num int 1.0 run \
    scoreboard players get .index zz.broker.util.select_weighted_index

# Cleanup
scoreboard objectives remove zz.broker.util.select_weighted_index
