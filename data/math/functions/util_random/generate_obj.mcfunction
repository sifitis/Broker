
#  Description: Initializes m_random and the values
#  		Inputs: None
#      Outputs: None

scoreboard objectives add m_random dummy

#NOTE: RNG algorithm is linear congruential using glibc parameters#
#parameters chosen for A,C, and M provide the best RNG periodocity#

scoreboard players set A m_random 1103515245
scoreboard players set C m_random 12345
scoreboard players set M m_random 2147483647

#generates initial X0 value based on world seed
execute store result score X m_random run seed

tellraw @a {"text":"Done.","color":"yellow"}
