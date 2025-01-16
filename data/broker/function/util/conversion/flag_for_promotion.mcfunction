
#==================================================================#
#
#   Well, here we are.  I know what you're probably thinking-
#
#   "But 2025 Sif, why are you doing this weird flag thing
#    instead of just converting them directly when you detect
#    the change in inventory?"
#
#   Well, dear reader, the reason is because the darndest thing  
#   happens if you try that.  For some reason, in singleplayer
#   creative mode, if you try to convert tokens when the inventory
#   is open, the game just vomits a veritable deluge of money
#   at you against your will.  This is my first and probably
#   final method at fixing that.
#
#==================================================================#

scoreboard objectives add zz.broker.uservar.conv.promote dummy

# Mark the entry only if user doesn't already have one
execute unless score @s zz.broker.uservar.conv.promote matches 1.. run \
    scoreboard players add .num_entries zz.broker.uservar.conv.promote 1

scoreboard players set @s zz.broker.uservar.conv.promote 1