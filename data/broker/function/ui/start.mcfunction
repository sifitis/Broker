

# Main - 1
# Help - 373100
# Settings - 373200
# Change setting - 373400
# About - 373400
#
# Why use '373' as the root number? It was the first one I thought of.

# Cases
execute if score @s broker matches 373200 run function broker:ui/settings
execute if score @s broker matches 373200 run scoreboard players set @s broker 0

# Change automerge.mode setting
execute if score @s broker matches 373300 run function broker:ui/settings/change_setting/automerge_mode
execute if score @s broker matches 373300 run scoreboard players set @s broker 0

# Change automerge.timeout setting
execute if score @s broker matches 373301 run function broker:ui/settings/change_setting/automerge_timeout
execute if score @s broker matches 373301 run scoreboard players set @s broker 0

# Change conv.mute setting
execute if score @s broker matches 373302 run function broker:ui/settings/change_setting/conv_mute
execute if score @s broker matches 373302 run scoreboard players set @s broker 0


# Default
execute unless score @s broker matches 0 run function broker:ui/main_menu
scoreboard players set @s broker 0

scoreboard players enable @s broker