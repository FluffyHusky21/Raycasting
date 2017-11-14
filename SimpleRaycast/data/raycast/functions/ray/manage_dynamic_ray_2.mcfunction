scoreboard players operation temp_0 mech_data += @s mech_x
scoreboard players operation temp_1 mech_data += @s mech_y
scoreboard players operation temp_2 mech_data += @s mech_z

execute store result entity @s Pos[0] double 0.00002 run scoreboard players get temp_0 mech_data
execute store result entity @s Pos[1] double 0.00002 run scoreboard players get temp_1 mech_data
execute store result entity @s Pos[2] double 0.00002 run scoreboard players get temp_2 mech_data

execute at @s run particle flame ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove in_0 mech_data 1
execute at @s if score in_0 mech_data > con_0 mech_data if score @s mech_data > con_0 mech_data if block ~ ~ ~ air offset ~ ~-1 ~ unless entity @e[distance=..0.75,nbt={DeathTime:0s},tag=!ray_caster] at @s run function raycast:ray/manage_dynamic_ray_2
