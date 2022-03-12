# this function takes a series of entities tagged with "unit_target" and a single entity tagged with "unit_caster" and #
# generates a scoreboard of low precision unit vectors (scaled by 10) from the caster to the targets

#################################################################################
###############DO NOT USE FOR DISTANCES OVER 40,000 BLOCKS!!!!!##################
#################################################################################

# INPUTS: N number of entities tagged with "unit_target" and one with "unit_caster"
# OUTPUTS: scoreboards UX,UY,UZ

#===============#
#     Setup     #
scoreboard objectives add UX dummy
scoreboard objectives add UY dummy
scoreboard objectives add UZ dummy

execute as @e[tag=unit_target] store result score @s UX run data get entity @s Pos[0] 10
execute as @e[tag=unit_target] store result score @s UY run data get entity @s Pos[1] 10
execute as @e[tag=unit_target] store result score @s UZ run data get entity @s Pos[2] 10

execute as @e[tag=unit_caster] store result score CASTER UX run data get entity @s Pos[0] 10
execute as @e[tag=unit_caster] store result score CASTER UY run data get entity @s Pos[1] 10
execute as @e[tag=unit_caster] store result score CASTER UZ run data get entity @s Pos[2] 10

#===========================#
#Get the displacement vector#
execute as @e[tag=unit_target] run scoreboard players operation @s UX -= CASTER UX
execute as @e[tag=unit_target] run scoreboard players operation @s UY -= CASTER UY
execute as @e[tag=unit_target] run scoreboard players operation @s UZ -= CASTER UZ

#====================================#
#Get magnitude of displacement vector#

scoreboard objectives add UX_SQRD dummy
scoreboard objectives add UY_SQRD dummy
scoreboard objectives add UZ_SQRD dummy
scoreboard objectives add U_MAG dummy
scoreboard objectives add U_MAG_OLD dummy
scoreboard objectives add U_MAG_SQRD dummy

execute as @e[tag=unit_target] run scoreboard players operation @s UX_SQRD = @s UX
execute as @e[tag=unit_target] run scoreboard players operation @s UX_SQRD *= @s UX_SQRD

execute as @e[tag=unit_target] run scoreboard players operation @s UY_SQRD = @s UY
execute as @e[tag=unit_target] run scoreboard players operation @s UY_SQRD *= @s UY_SQRD

execute as @e[tag=unit_target] run scoreboard players operation @s UZ_SQRD = @s UZ
execute as @e[tag=unit_target] run scoreboard players operation @s UZ_SQRD *= @s UZ_SQRD

execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG_SQRD += @s UX_SQRD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG_SQRD += @s UY_SQRD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG_SQRD += @s UZ_SQRD

execute as @e[tag=unit_target] run scoreboard players set @s U_MAG_OLD 5000

#BABYLONIAN METHOD OF GETTING SQUARE ROOTS#
#-------ITERATION 1-------------------------------------------------------------------------#
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG = @s U_MAG_SQRD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG += @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= CONST_2 m_constants
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG_OLD = @s U_MAG

#-------ITERATION 2-------------------------------------------------------------------------#
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG = @s U_MAG_SQRD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG += @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= CONST_2 m_constants
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG_OLD = @s U_MAG

#-------ITERATION 3-------------------------------------------------------------------------#
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG = @s U_MAG_SQRD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG += @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= CONST_2 m_constants
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG_OLD = @s U_MAG

#-------ITERATION 4-------------------------------------------------------------------------#
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG = @s U_MAG_SQRD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG += @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= CONST_2 m_constants
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG_OLD = @s U_MAG

#-------ITERATION 5-------------------------------------------------------------------------#
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG = @s U_MAG_SQRD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG += @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= CONST_2 m_constants
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG_OLD = @s U_MAG

#-------ITERATION 6-------------------------------------------------------------------------#
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG = @s U_MAG_SQRD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG += @s U_MAG_OLD
execute as @e[tag=unit_target] run scoreboard players operation @s U_MAG /= CONST_2 m_constants

#Cleanup
scoreboard objectives remove UX_SQRD
scoreboard objectives remove UY_SQRD
scoreboard objectives remove UZ_SQRD
scoreboard objectives remove U_MAG_OLD
scoreboard objectives remove U_MAG_SQRD

#===================#
#Get the unit vector#

#We need to scale before we can divide by the magnitude#
execute as @e[tag=unit_target] run scoreboard players operation @s UX *= CONST_10 m_constants
execute as @e[tag=unit_target] run scoreboard players operation @s UY *= CONST_10 m_constants
execute as @e[tag=unit_target] run scoreboard players operation @s UZ *= CONST_10 m_constants

execute as @e[tag=unit_target] run scoreboard players operation @s UX /= @s U_MAG
execute as @e[tag=unit_target] run scoreboard players operation @s UY /= @s U_MAG
execute as @e[tag=unit_target] run scoreboard players operation @s UZ /= @s U_MAG

#Cleanup
scoreboard objectives remove U_MAG