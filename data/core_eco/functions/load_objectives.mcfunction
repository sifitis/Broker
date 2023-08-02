
#  Description: Runs on load to initialize all necessary scoreboards
#  		Inputs: None
#      Outputs: None
#    Tagged in: #minecraft:load

tellraw @a {"text":"Running SifEconomics v1.20.0.0","color":"aqua"}
scoreboard objectives add obj_exist_check dummy
scoreboard players set exist_flag obj_exist_check 0

scoreboard objectives add chainLengthTest dummy

#=========CONFIG PANEL===========#
scoreboard objectives add config dummy {"text":"SifEco Config","color":"yellow"}
execute unless score conversion config matches -2147483648..2147483647 run scoreboard players set conversion config 1
execute unless score magic config matches -2147483648..2147483647 run scoreboard players set magic config 1
execute unless score token_repair config matches -2147483648..2147483647 run scoreboard players set token_repair config 1
execute unless score cust_w_trade config matches -2147483648..2147483647 run scoreboard players set cust_w_trade config 1
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

#=======TRADER SUMMONING========#
team add no_collision
team modify no_collision collisionRule never
#===============================#

function trader:initialize_table