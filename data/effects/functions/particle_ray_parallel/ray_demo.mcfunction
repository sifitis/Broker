tag @e[distance=..30,type=!player] add RAY_TARGET
tag @s add RAY_CASTER
execute at @e[tag=RAY_CASTER] run playsound minecraft:block.beacon.power_select master @a[distance=..50] ~ ~ ~ 1 2
execute at @e[tag=RAY_CASTER] run playsound minecraft:block.beacon.power_select master @a[distance=..50] ~ ~ ~ 1 1
execute at @e[tag=RAY_CASTER] run playsound minecraft:block.beacon.power_select master @a[distance=..50] ~ ~ ~ 1 0
execute at @e[tag=RAY_CASTER] run playsound minecraft:block.beacon.deactivate master @a[distance=..50] ~ ~ ~ 1 2
function effects:particle_ray_parallel/setup_ray
tellraw @s {"text":"PEWW!","color":"red"}
