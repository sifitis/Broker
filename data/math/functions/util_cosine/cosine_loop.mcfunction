
#	Defined in main function:
#
#	m_cosine:
#	  THETA (the angle)
#	  N (the series order)
#	  i (the iterator)
#	  X (the work variable and output)

#COSINE APPROXIMATION = SUMMATION [ (-1)^i  *  x^(2i)  /  (2n)! ]
#-------------------------------------------------------#
#-------------------------------------------------------#
#Find the first term #
scoreboard players set INPUT1 m_io -1
scoreboard players operation INPUT2 m_io = i m_cosine
function math:power
scoreboard players operation T1 m_cosine = OUTPUT1 m_io

tellraw @s {"color":"gold","text":"T1 = ","extra":[{"score":{"name":"T1","objective":"m_cosine"}}]}

#-------------------------------------------------------#
#-------------------------------------------------------#
#Find the second term#
scoreboard players operation INPUT1 m_io = THETA m_cosine
scoreboard players operation INPUT2 m_io = i m_cosine
scoreboard players operation INPUT2 m_io *= CONST_2 m_constants
scoreboard players operation SCALE_DIVIDER m_cosine = INPUT2 m_io
scoreboard players remove SCALE_DIVIDER m_cosine 1
tellraw @s {"color":"green","text":"SD = ","extra":[{"score":{"name":"SCALE_DIVIDER","objective":"m_cosine"}}]}

function math:power

scoreboard players operation T2 m_cosine = OUTPUT1 m_io

#because THETA is scaled by 100, the power shoots way higher than              #
#it should in the second term, so we have to divide by 100^(2i-1) to           #
#get it back in shape. That (2i-1) term is referred to here as the scale divider.# 

#function math:break

scoreboard players set INPUT1 m_io 100
scoreboard players operation INPUT2 m_io = SCALE_DIVIDER m_cosine

function math:power

scoreboard players operation T4 m_cosine = OUTPUT1 m_io
execute unless score SCALE_DIVIDER m_cosine < CONST_0 m_constants run scoreboard players operation T2 m_cosine /= T4 m_cosine
execute if score SCALE_DIVIDER m_cosine < CONST_0 m_constants run scoreboard players operation T2 m_cosine *= CONST_e2 m_constants

tellraw @s {"color":"gold","text":"T2 = ","extra":[{"score":{"name":"T2","objective":"m_cosine"}}]}
tellraw @s {"color":"gold","text":"T4 = ","extra":[{"score":{"name":"T4","objective":"m_cosine"}}]}

#-------------------------------------------------------#
#-------------------------------------------------------#
#Find the third term #
scoreboard players operation INPUT1 m_io = i m_cosine
scoreboard players operation INPUT1 m_io *= CONST_2 m_constants
function math:factorial
scoreboard players operation T3 m_cosine = OUTPUT1 m_io

tellraw @s {"color":"gold","text":"T3 = ","extra":[{"score":{"name":"T3","objective":"m_cosine"}}]}

#-------------------------------------------------------#
#-------------------------------------------------------#
#Put it all together #
scoreboard players operation TSUM m_cosine = T1 m_cosine
scoreboard players operation TSUM m_cosine *= T2 m_cosine
scoreboard players operation TSUM m_cosine /= T3 m_cosine

scoreboard players operation X m_cosine += TSUM m_cosine
#-------------------------------------------------------#
#-------------------------------------------------------#

tellraw @s {"color":"blue","text":"TSUM = ","extra":[{"score":{"name":"TSUM","objective":"m_cosine"}}]}
tellraw @s {"color":"red","text":"X    = ","extra":[{"score":{"name":"X","objective":"m_cosine"}}]}


scoreboard players add i m_cosine 1
execute unless score i m_cosine > N m_cosine run function math:util_cosine/cosine_loop

