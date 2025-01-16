
# Handle manual conversion
execute as @a[scores={zz.broker.uservar.conv.promote=1..}] run function broker:util/conversion/promote
execute as @a[scores={zz.broker.uservar.conv.demote=1..}] run function broker:util/conversion/demote
