
#  Description: Generates a random number
#  		Inputs: None
#      Outputs: OUTPUT1 is the random number (X)

scoreboard players operation X m_random *= A m_random
scoreboard players operation X m_random += C m_random
scoreboard players operation X m_random %= M m_random
scoreboard players operation O m_random = X m_random