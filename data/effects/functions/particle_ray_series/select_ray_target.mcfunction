
# !! Run from ray caster !! #

#select a single target to set as active#
scoreboard players set @e[distance=..32,tag=RAY_TARGET,limit=1,sort=nearest] ACTIVE_TARGET 1
execute if entity @e[distance=..32,scores={ACTIVE_TARGET=1..}] run scoreboard players set @s RAY_NEEDS_TARGET 0

#create the ray tracer#
execute if entity @e[distance=..32,scores={ACTIVE_TARGET=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,CustomName:"{\"text\":\"ray_tracer\"}"}

#trace the ray#
execute if entity @e[distance=..32,scores={ACTIVE_TARGET=1..}] run function effects:particle_ray_series/trace_ray