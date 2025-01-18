
# This is for when you want to disable the datapack but not lose any information

# Note: All scoreboards are included here, but most will be commented out because they are
#       persistent through unload operations

# ================================================================================================ #
#  Essential objectives  
# ================================================================================================ #

# zz.broker.util

# ================================================================================================ #
#  Global Settings  
# ================================================================================================ #

# zz.broker.globalvar.settings

# ================================================================================================ #
#  Player-specific variables 
# ================================================================================================ #

scoreboard objectives remove zz.broker.uservar.util.cooldown
scoreboard objectives remove zz.broker.uservar.util.automerge.is_paused
scoreboard objectives remove zz.broker.uservar.util.automerge.pause.cooldown
scoreboard objectives remove zz.broker.uservar.util.automerge.pause.strikes

# Player settings --------------------------------------------- #

scoreboard objectives remove zz.broker.uservar.setting.not_new

# Mute sound when converting coins.
# == zz.broker.uservar.setting.conv.mute

# Disable token automerge
# == zz.broker.uservar.setting.automerge.mode
# == zz.broker.uservar.setting.automerge.timeout
# == zz.broker.uservar.setting.automerge.strikes

# ================================================================================================ #
#  Command Storage Data 
# ================================================================================================ #

# Generate default manifest if there isn't one
# == data.component_manifest
# == data.ui

# ================================================================================================ #
#  Trigger Objectives 
# ================================================================================================ #

# Player access portal for all broker functionality
scoreboard objectives remove broker