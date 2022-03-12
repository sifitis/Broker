tag @e[scores={ACTIVE_TARGET=1..}] remove RAY_TARGET
scoreboard players set @e[scores={ACTIVE_TARGET=1..}] ACTIVE_TARGET 0
scoreboard players set @s RAY_NEEDS_TARGET 1

# NOTE: The kill radius is larger (64 vs 32) for safety purposes.
kill @e[distance=..64,name=ray_tracer]

execute if entity @e[distance=..32,tag=RAY_TARGET] run function effects:particle_ray_parallel/select_ray_target

