scoreboard players operation xpos mech_data += temp_0 mech_data
scoreboard players operation ypos mech_data += temp_1 mech_data
scoreboard players operation zpos mech_data += temp_2 mech_data

execute store result entity @s Pos[0] double 0.00002 run scoreboard players get xpos mech_data
execute store result entity @s Pos[1] double 0.00002 run scoreboard players get ypos mech_data
execute store result entity @s Pos[2] double 0.00002 run scoreboard players get zpos mech_data

execute at @s run particle flame ~ ~ ~ 0 0 0 0 1

scoreboard players remove in_3 mech_data 1
execute at @s if score in_3 mech_data > con_0 mech_data if block ~ ~ ~ air offset ~ ~-1 ~ unless entity @e[distance=..0.75,nbt={DeathTime:0s},tag=!ray_caster] at @s run function raycast:ray/manage_ray
