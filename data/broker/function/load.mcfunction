
# This is where all of the important stuff is done to start the datapack up

tellraw @a [{"text":"❂Broker v3.1.1 loaded.","color":"#5d7fbd"}]

# ================================================================================================ #
#  Essential objectives  
# ================================================================================================ #

scoreboard objectives add zz.broker.util dummy
scoreboard objectives add zz.broker.const dummy

# ================================================================================================ #
#  Global Settings  
# ================================================================================================ #
scoreboard objectives add zz.broker.globalvar.settings dummy

# Setting Defaults ---------------------------------------------------- #

# Should the datapack perform garbage collection on empty scoreboards
execute unless score .do_garbage_collection zz.broker.globalvar.settings matches 0..1 run \
    scoreboard players set .do_garbage_collection zz.broker.globalvar.settings 1

# How many ticks of cooldown should there be for player automerge
execute unless score .automerge_cooldown zz.broker.globalvar.settings matches 0..2147483647 run \
    scoreboard players set .automerge_cooldown zz.broker.globalvar.settings 120

# Villager regenerate time (in ticks)
execute unless score .villager_regenerate_ticks zz.broker.globalvar.settings matches 0..2147483647 run \
    scoreboard players set .villager_regenerate_ticks zz.broker.globalvar.settings 24000

# Show output log in chat
execute unless score .log_output zz.broker.globalvar.settings matches 0..1 run \
    scoreboard players set .log_output zz.broker.globalvar.settings 0

# Version of token item used (currently unused value)
scoreboard players set .token_version zz.broker.globalvar.settings 2

# ================================================================================================ #
#  Player-specific variables 
# ================================================================================================ #

scoreboard objectives add zz.broker.uservar.util.cooldown dummy
scoreboard objectives add zz.broker.uservar.util.automerge.is_paused dummy
scoreboard objectives add zz.broker.uservar.util.automerge.pause.cooldown dummy
scoreboard objectives add zz.broker.uservar.util.automerge.pause.strikes dummy

# Reset not-new flag on load
scoreboard objectives remove zz.broker.uservar.setting.not_new
scoreboard objectives add zz.broker.uservar.setting.not_new dummy

# Player settings --------------------------------------------- #

# Mute sound when converting coins.
scoreboard objectives add zz.broker.uservar.setting.conv.mute dummy

#  token automerge mode
scoreboard objectives add zz.broker.uservar.setting.automerge.mode dummy
scoreboard objectives add zz.broker.uservar.setting.automerge.timeout dummy
scoreboard objectives add zz.broker.uservar.setting.automerge.strikes dummy

# ================================================================================================ #
#  Command Storage Data 
# ================================================================================================ #

# Generate default manifest if there isn't one
execute unless data storage datapack:broker data.component_manifest run function broker:util/manifest/initialize_default_manifest
execute unless data storage datapack:broker data.ui run function broker:util/ui/init_text_elements

# ================================================================================================ #
#  Trigger Objectives 
# ================================================================================================ #

# Player access portal for all broker functionality
scoreboard objectives add broker trigger

function broker:util/subprocess/trigger_enabler

# ================================================================================================ #
#  Constants 
# ================================================================================================ #

scoreboard players set .-1 zz.broker.const -1
scoreboard players set .64 zz.broker.const 64

# ================================================================================================ #
#  Villager Respawn 
# ================================================================================================ #

schedule function broker:util/subprocess/regenerate_villagers 5s