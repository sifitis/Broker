# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" > broker:util/generic/select_weighted_index/select_loop","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

# Set entry to be the weight of the first index
execute store result score .entry zz.broker.util.select_weighted_index run \
    data get storage datapack:broker process.generic.select_weighted_index.weight_list_select[0]

# Add to the .sum variable
scoreboard players operation .sum zz.broker.util.select_weighted_index += \
    .entry zz.broker.util.select_weighted_index

        # Log Output
        execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                    {"text":" - Test index: ","color":"aqua"},\
                    {"score":{"name":".index","objective":"zz.broker.util.select_weighted_index"}},\
                ]

        # Log Output
        execute if score .log_output zz.broker.globalvar.settings matches 1 run \
                tellraw @a [\
                    {"text":" - Testing if [","color":"aqua"},\
                    {"score":{"name":".sum","objective":"zz.broker.util.select_weighted_index"}},\
                    {"text":" > ","color":"aqua"},\
                    {"score":{"name":".rand","objective":"zz.broker.util.select_weighted_index"}},\
                    {"text":"]","color":"aqua"},\
                ]

        # Log Output
        execute if score .log_output zz.broker.globalvar.settings matches 1 \
            if score .sum zz.broker.util.select_weighted_index > .rand zz.broker.util.select_weighted_index run \
                tellraw @a [\
                    {"text":" - Test Passed","color":"aqua"}\
                ]

# If the .sum is greater than .rand (but wasn't the previous iteration) then that means that .rand falls in this box.
execute if score .sum zz.broker.util.select_weighted_index > .rand zz.broker.util.select_weighted_index run \
    return 1

# If the entry failed, then delete it and move on to the next one
data remove storage datapack:broker process.generic.select_weighted_index.weight_list_select[0]
scoreboard players add .index zz.broker.util.select_weighted_index 1

# Loop
execute if data storage datapack:broker process.generic.select_weighted_index.weight_list_select[0] run \
    function broker:util/generic/select_weighted_index/select_loop

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"text":" < broker:util/generic/select_weighted_index/select_loop","color":"#006600"}]
# ---------------------------------------------------------------------------------------