
# !! Run from ray caster !! #

execute as @e[distance=..128,name=ray_tracer] at @s run tp @s ^ ^ ^1
scoreboard players remove @s RAY_STEPS_LEFT 1

#if the ray tracer collides with a block#
execute if score @s RAY_STEPS_LEFT matches ..0 as @e[distance=..128,name=ray_tracer] at @s run function math:eye_trace/kill_ray
execute as @e[distance=..128,name=ray_tracer] at @s unless block ^ ^ ^1 #effects:non-solid run function math:eye_trace/kill_ray
execute unless score @s RAY_STEPS_LEFT matches ..0 at @e[distance=..128,name=ray_tracer] if block ^ ^ ^1 #effects:non-solid run function math:eye_trace/trace_ray
