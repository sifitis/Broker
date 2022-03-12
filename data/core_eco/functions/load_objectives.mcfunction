
#  Description: Runs on load to initialize all necessary scoreboards
#  		Inputs: None
#      Outputs: None
#    Tagged in: #minecraft:load

tellraw @a {"text":"Running SifTech Economics v2.2.0 by sifitis","color":"aqua"}
scoreboard objectives add obj_exist_check dummy
scoreboard players set exist_flag obj_exist_check 0

scoreboard objectives add chainLengthTest dummy

#=========CONFIG PANEL===========#
scoreboard objectives add config dummy {"text":"SifEco Config","color":"yellow"}
execute unless score conversion config matches -2147483648..2147483647 run scoreboard players set conversion config 1
execute unless score magic config matches -2147483648..2147483647 run scoreboard players set magic config 1
execute unless score token_repair config matches -2147483648..2147483647 run scoreboard players set token_repair config 1
#================================#


#=========MATH STUFF=============#
#Test to make sure the m_random objective exists#
execute if score X m_random matches -2147483648..2147483647 run scoreboard players add exist_flag obj_exist_check 1
#execute if score exist_flag obj_exist_check matches 1.. run tellraw @a {"text":"SifEco: Found m_random objective correctly.","color":"green"}
execute unless score exist_flag obj_exist_check matches 1.. run tellraw @a {"text":"SifEco: Unable to find m_random objective. Running math:util_random/generate_obj...","color":"red"}
execute unless score exist_flag obj_exist_check matches 1.. run function math:util_random/generate_obj

scoreboard players set exist_flag obj_exist_check 0

#Test to make sure the m_constants objective exists#
execute if score CONST_0 m_constants matches -2147483648..2147483647 run scoreboard players add exist_flag obj_exist_check 1
#execute if score exist_flag obj_exist_check matches 1.. run tellraw @a {"text":"SifEco: Found m_constants objective correctly.","color":"green"}
execute unless score exist_flag obj_exist_check matches 1.. run tellraw @a {"text":"SifEco: Unable to find m_constants objective. Running math:util_constants/generate_obj...","color":"red"}
execute unless score exist_flag obj_exist_check matches 1.. run function math:util_constants/generate_obj

scoreboard objectives remove obj_exist_check
#================================#


#=========SPELL COOLDOWN=========#

#==arcane==#
scoreboard objectives add cd_prest dummy
scoreboard players set CD_TIME cd_prest 0

#==pyromancy==#
scoreboard objectives add cd_fireball dummy
scoreboard players set CD_TIME cd_fireball 200

#==geomancy===#
scoreboard objectives add cd_alchemy dummy
scoreboard players set CD_TIME cd_alchemy 40

#==purification==#
scoreboard objectives add cd_restore dummy
scoreboard players set CD_TIME cd_restore 216000

#==hydromancy==#
scoreboard objectives add cd_rain dummy
scoreboard players set CD_TIME cd_rain 360000

scoreboard objectives add cd_geyser dummy
scoreboard players set CD_TIME cd_geyser 40
scoreboard players set RUN_TIME cd_geyser -100

#===============================#

#=======TRADER SUMMONING========#
team add no_collision
team modify no_collision collisionRule never
#===============================#