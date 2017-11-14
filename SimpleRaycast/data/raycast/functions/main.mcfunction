#ray tracing
kill @e[tag=mech_ray]
execute as @e[tag=mech_dynamic_ray] run function raycast:ray/manage_dynamic_ray

#use carrot on stick
execute as @a[scores={mech_usestick=1..}] at @s offset ~ ~1.61 ~ run function raycast:spawn_dynamic_ray
scoreboard players set @a mech_usestick 0