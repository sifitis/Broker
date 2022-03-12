
# Form cos(THETA)
#
# Inputs:
#
# INPUT1 is THETA (in degrees)
# OUTPUT1 is cos(THETA) *10^4 (represented as X)

#initialize function variables#
scoreboard objectives add m_cosine dummy
scoreboard players operation THETA m_cosine = INPUT1 m_io

scoreboard players reset INPUT1 m_io

#N is the order of the cosine series approximation - higher is more accurate#
#but takes more iterations.  5 should be plenty.                            #
scoreboard players set N m_cosine 4
scoreboard players set i m_cosine 0
scoreboard players set X m_cosine 0
scoreboard players set CONST_2 m_constants 2
scoreboard players set CONST_2PIe2 m_constants 628
scoreboard players set CONST_360 m_constants 360
scoreboard players set CONST_e2 m_constants 100

#scale THETA by 10000 and convert to radians#
scoreboard players operation THETA m_cosine *= CONST_2PIe2 m_constants
scoreboard players operation THETA m_cosine /= CONST_360 m_constants

tellraw @s {"text":"The angle in radiansE2 is ","extra":[{"score":{"name":"THETA","objective":"m_cosine"}}]}

#perform iterative loop#
function math:util_cosine/cosine_loop

#output result and close function#
scoreboard players operation OUTPUT1 m_io = X m_cosine
scoreboard objectives remove m_cosine