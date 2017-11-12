scoreboard players operation xpos ray_data += temp_0 ray_data
scoreboard players operation zpos ray_data += temp_2 ray_data
scoreboard players operation ypos ray_data += temp_1 ray_data

execute store result entity @s Pos[0] double 0.0002 run scoreboard players get xpos ray_data
execute store result entity @s Pos[1] double 0.0002 run scoreboard players get ypos ray_data
execute store result entity @s Pos[2] double 0.0002 run scoreboard players get zpos ray_data

execute at @s run particle flame ~ ~ ~ 0 0 0 0 1

scoreboard players remove in_0 ray_data 1
execute at @s if score in_0 ray_data > con_0 ray_data run function raycast:utils/manage_ray_2