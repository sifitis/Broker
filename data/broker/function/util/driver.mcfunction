
# Handle manual conversion
execute as @a[scores={zz.broker.uservar.conv.promote=1..}] run function broker:util/conversion/promote
execute as @a[scores={zz.broker.uservar.conv.demote=1..}] run function broker:util/conversion/demote

# Open user menu
execute as @a as @s unless score @s broker matches 0 run function broker:ui/start