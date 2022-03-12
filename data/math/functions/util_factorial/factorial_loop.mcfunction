
#	Defined in main function:
#
#	m_factorial:
#	  N (the number being factorial'd)
#	  M (the result)
#	  i (the iterator)

scoreboard players operation M m_factorial *= i m_factorial
scoreboard players add i m_factorial 1

execute unless score i m_factorial > N m_factorial run function math:util_factorial/factorial_loop

