scoreboard players operation in_3 mech_data = instant_distance mech_data

tag @s add ray_caster
summon armor_stand ~ ~ ~ {Tags:["mech_ray","mech_ray_start"],NoGravity:1b,Marker:1b,Invisible:1}

execute store result score in_0 mech_data run data get entity @s Rotation[0] 10
execute if score in_0 mech_data < con_0 mech_data run scoreboard players add in_0 mech_data 3600
scoreboard players add in_0 mech_data 900
execute if score in_0 mech_data > con_3600 mech_data run scoreboard players remove in_0 mech_data 3600
scoreboard players operation temp_2 mech_data = in_0 mech_data
# sine x
function raycast:math/sine
scoreboard players operation temp_sinx mech_data = out_0 mech_data
# cosine x
scoreboard players operation in_0 mech_data = temp_2 mech_data
function raycast:math/cosine
scoreboard players operation temp_cosx mech_data = out_0 mech_data

# y rot setup
execute store result score in_0 mech_data run data get entity @s Rotation[1] 10
scoreboard players set temp_3 mech_data 0
execute if score in_0 mech_data < con_0 mech_data run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data > con_0 mech_data run scoreboard players operation in_0 mech_data *= con_-1 mech_data
scoreboard players operation temp_2 mech_data = in_0 mech_data
# sine y
function raycast:math/sine
scoreboard players operation temp_siny mech_data = out_0 mech_data
# cosine y
scoreboard players operation in_0 mech_data = temp_2 mech_data
function raycast:math/cosine
scoreboard players operation temp_cosy mech_data = out_0 mech_data

scoreboard players operation temp_0 mech_data = temp_cosx mech_data
scoreboard players operation temp_0 mech_data *= temp_cosy mech_data
scoreboard players operation temp_0 mech_data /= con_10000 mech_data

scoreboard players operation temp_2 mech_data = temp_sinx mech_data
scoreboard players operation temp_2 mech_data *= temp_cosy mech_data
scoreboard players operation temp_2 mech_data /= con_10000 mech_data

scoreboard players operation temp_1 mech_data = temp_siny mech_data
execute unless score temp_3 mech_data > con_0 mech_data run scoreboard players operation temp_1 mech_data *= con_-1 mech_data

execute store result score xpos mech_data run data get entity @e[tag=mech_ray_start,limit=1] Pos[0] 50000
execute store result score ypos mech_data run data get entity @e[tag=mech_ray_start,limit=1] Pos[1] 50000
execute store result score zpos mech_data run data get entity @e[tag=mech_ray_start,limit=1] Pos[2] 50000
execute as @e[tag=mech_ray_start] at @s run function raycast:ray/manage_ray


tag @e[tag=mech_ray_start] remove mech_ray_start
tag @s remove ray_caster

