#This scoreboard value affects how far an instant ray travels
scoreboard players set in_0 ray_data 100

scoreboard players operation temp_0 ray_data = temp_cosx ray_data
scoreboard players operation temp_0 ray_data *= temp_cosy ray_data
scoreboard players operation temp_0 ray_data /= con_1000 ray_data

scoreboard players operation temp_2 ray_data = temp_sinx ray_data
scoreboard players operation temp_2 ray_data *= temp_cosy ray_data
scoreboard players operation temp_2 ray_data /= con_1000 ray_data

scoreboard players operation temp_1 ray_data = temp_siny ray_data
execute unless score temp_3 ray_data > con_0 ray_data run scoreboard players operation temp_1 ray_data *= con_-1 ray_data

execute store result score xpos ray_data run data get entity @s Pos[0] 5000
execute store result score zpos ray_data run data get entity @s Pos[2] 5000
execute store result score ypos ray_data run data get entity @s Pos[1] 5000

function raycast:utils/manage_ray_2

execute at @s run setblock ~ ~ ~ air destroy
