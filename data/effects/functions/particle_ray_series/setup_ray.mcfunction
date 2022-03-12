
### REQUIRED INPUTS:
#		1    entity with tag RAY_CASTER
#		1+ entities with tag RAY_TARGET

#create necessary scoreboard variables#

scoreboard objectives add RAY_NEEDS_TARGET dummy
scoreboard objectives add ACTIVE_TARGET dummy

#The ray doesn't have a target initially, so it needs to find one#
scoreboard players set @s RAY_NEEDS_TARGET 1

function effects:particle_ray_series/select_ray_target

tag @s remove RAY_CASTER
scoreboard objectives remove RAY_NEEDS_TARGET
scoreboard objectives remove ACTIVE_TARGET