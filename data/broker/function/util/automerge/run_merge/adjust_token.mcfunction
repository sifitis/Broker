
# args: [type_num] = The numerical (1-5) type of the token
#       [type_str] = The string type of the token (copper, silver, etc.)
#       [delta_score_char] = The scoreboard value for the delta (C,S, G, etc.)
#
#

# Initialize the storage compound
$data modify storage datapack:broker process.automerge.run_merge.$(type_char) set value {type_num:$(type_num),type_str:"$(type_str)",count:0}

# Invert the count if it's negative
$execute if score d$(type_char) zz.broker.util.automerge.merge matches ..-1 run \
    scoreboard players operation d$(type_char) zz.broker.util.automerge.merge *= .-1 zz.broker.const

# Store the count
$execute store result storage datapack:broker process.automerge.run_merge.$(type_char).count int 1 run \
    scoreboard players get d$(type_char) zz.broker.util.automerge.merge

# Remove extra tokens
$execute if score $(type_char)1 zz.broker.util.automerge.merge < $(type_char)0 zz.broker.util.automerge.merge run \
    function broker:util/automerge/run_merge/clear_num_tokens with storage datapack:broker process.automerge.run_merge.$(type_char)

# Give required tokens
$execute if score $(type_char)1 zz.broker.util.automerge.merge > $(type_char)0 zz.broker.util.automerge.merge run \
    function broker:util/automerge/run_merge/give_num_tokens with storage datapack:broker process.automerge.run_merge.$(type_char)