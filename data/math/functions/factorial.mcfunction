
# Inputs:
# 
# INPUT1 is N
# OUTPUT1 is N! (represented as M)

#initialize function variables#
scoreboard objectives add m_factorial dummy
scoreboard players operation N m_factorial = INPUT1 m_io
scoreboard players reset INPUT1 m_io
scoreboard players set M m_factorial 1
scoreboard players set i m_factorial 1

#perform iterative loop#
function math:util_factorial/factorial_loop

#output result and close function#
scoreboard players operation OUTPUT1 m_io = M m_factorial
scoreboard objectives remove m_factorial