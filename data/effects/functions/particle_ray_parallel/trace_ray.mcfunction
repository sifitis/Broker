
# !! Run from ray caster !! #

execute as @e[distance=..32,name=ray_tracer] at @s facing entity @e[scores={ACTIVE_TARGET=1..}] feet run tp @s ^ ^ ^0.5
#execute as @e[distance=..32,name=ray_tracer] at @s run particle minecraft:dust 1 1 0.3 1 ~ ~1 ~ 0.05 0.05 0.05 0 5 force
execute as @e[distance=..32,name=ray_tracer] at @s run particle minecraft:flame ~ ~1 ~ 0.05 0.05 0.05 0.01 5 force

#if the ray tracer arrives at the target or collides with a solid block#
#execute as @e[distance=..32,name=ray_tracer] at @s if entity @e[scores={ACTIVE_TARGET=1..},distance=..0.5] if block ~ ~1 ~ #effects:non-solid run function effects:particle_ray_parallel/kill_ray
#execute as @e[distance=..32,name=ray_tracer] at @s unless entity @e[scores={ACTIVE_TARGET=1..},distance=..0.5] unless block ~ ~1 ~ #effects:non-solid run function effects:particle_ray_parallel/trace_ray

#if the ray tracer arrives at target only#
execute as @e[distance=..32,name=ray_tracer] at @s unless entity @e[scores={ACTIVE_TARGET=1..},distance=..0.5] as @e[tag=RAY_CASTER] run function effects:particle_ray_parallel/trace_ray
execute as @e[distance=..32,name=ray_tracer] at @s if entity @e[scores={ACTIVE_TARGET=1..},distance=..0.5] as @e[tag=RAY_CASTER] run function effects:particle_ray_parallel/kill_ray
