$execute store result score .rand zz.broker.util.select_weighted_index run random value 1..$(total_weight)

# Go from (1,n) to (0,n-1)
scoreboard players remove .rand zz.broker.util.select_weighted_index 1