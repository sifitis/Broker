
# This is where all of the important stuff is done to start the datapack up

tellraw @a [{"text":"❂Broker v3.0 loaded.","color":"red"}]

# ================================================================================================ #
#  Essential objectives  
# ================================================================================================ #

scoreboard objectives add zz.broker.util dummy
scoreboard objectives add zz.broker.const dummy

# ================================================================================================ #
#  Global Settings  
# ================================================================================================ #
scoreboard objectives add zz.broker.globalvar.settings dummy

# Should the datapack perform garbage collection on empty scoreboards
execute unless score .do_garbage_collection zz.broker.globalvar.settings matches 0..1 run \
    scoreboard players set .do_garbage_collection zz.broker.globalvar.settings 1

# ================================================================================================ #
#  Player-specific variables 
# ================================================================================================ #

# Player settings --------------------------------------------- #

# Mute sound when converting coins.
scoreboard objectives add zz.broker.uservar.setting.conv.mute dummy

# Disable token automerge
scoreboard objectives add zz.broker.uservar.setting.automerge.enabled dummy

# ================================================================================================ #
#  Command Storage Data 
# ================================================================================================ #

# Generate default manifest if there isn't one
execute unless data storage datapack:broker data.component_manifest run function broker:util/manifest/initialize_default_manifest

# ================================================================================================ #
#  Trigger Objectives 
# ================================================================================================ #

function broker:util/subprocess/trigger_enabler

# Player access portal for all broker functionality
scoreboard objectives add broker trigger

# ================================================================================================ #
#  Trigger Objectives 
# ================================================================================================ #

scoreboard players set .-1 zz.broker.const -1
scoreboard players set .64 zz.broker.const 64