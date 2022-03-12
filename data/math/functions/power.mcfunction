
# Form: N^p
#
# Inputs:
# 
# INPUT1 is N
# INPUT2 is p
# OUTPUT1 is N^p (represented as Q)

#initialize function variables#
scoreboard objectives add m_power dummy
scoreboard players operation N m_power = INPUT1 m_io
scoreboard players operation p m_power = INPUT2 m_io

scoreboard players reset INPUT1 m_io
scoreboard players reset INPUT2 m_io

scoreboard players set Q m_power 1
execute if score p m_power > CONST_0 m_constants run scoreboard players set i m_power 1
execute if score p m_power < CONST_0 m_constants run scoreboard players set i m_power -1
scoreboard players set CONST_0 m_constants 0

#perform iterative loop#
execute if score p m_power = CONST_0 m_constants run scoreboard players set Q m_power 1
execute unless score p m_power = CONST_0 m_constants run function math:util_power/power_loop

#output result and close function#
scoreboard players operation OUTPUT1 m_io = Q m_power
scoreboard objectives remove m_power