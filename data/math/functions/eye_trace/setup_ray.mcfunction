
# !! Run from the ray caster (who has tag RAY_CASTER) !! #

#create necessary scoreboard variables#

scoreboard objectives add RAY_STEPS_LEFT dummy

#The ray doesn't have a target initially, so it needs to find one#
scoreboard players set @s RAY_STEPS_LEFT 128

summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,CustomName:"{\"text\":\"ray_tracer\"}"}
execute anchored eyes positioned ^ ^ ^ as @e[name=ray_tracer] rotated as @e[tag=RAY_CASTER,limit=1,distance=..128] run tp @s ~ ~ ~ ~ ~

#trace the ray#
function math:eye_trace/trace_ray

#cleanup afterwards#
tag @s remove RAY_CASTER
scoreboard objectives remove RAY_STEPS_LEFT
