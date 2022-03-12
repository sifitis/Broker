
#	Defined in main function:
#
#	m_power:
#	  N (Base)
#	  p (Exponent)
#	  Q (Work variable)
#	  i (the iterator)

#If p is positive
execute if score p m_power > CONST_0 m_constants run scoreboard players operation Q m_power *= N m_power
execute if score p m_power > CONST_0 m_constants run scoreboard players add i m_power 1
execute if score p m_power > CONST_0 m_constants unless score i m_power > p m_power run function math:util_power/power_loop

#If p is negative
execute if score p m_power < CONST_0 m_constants run scoreboard players operation Q m_power /= N m_power
execute if score p m_power < CONST_0 m_constants run scoreboard players remove i m_power 1
execute if score p m_power < CONST_0 m_constants unless score i m_power < p m_power run function math:util_power/power_loop
