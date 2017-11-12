summon armor_stand ~ ~ ~ {Tags:["ray_instant","ray_start"],NoGravity:1b,Marker:1b,Invisible:1}

execute store result score in_0 ray_data run data get entity @s Rotation[0]
execute if score in_0 ray_data < con_0 ray_data run scoreboard players operation in_0 ray_data += con_360 ray_data
scoreboard players operation in_0 ray_data += con_90 ray_data
# sine x
function raycast:math/sine
scoreboard players operation temp_sinx ray_data = out_0 ray_data
# cosine x
function raycast:math/cosine
scoreboard players operation temp_cosx ray_data = out_0 ray_data

# y rot setup
execute store result score in_0 ray_data run data get entity @s Rotation[1]
scoreboard players set temp_3 ray_data 0
execute if score in_0 ray_data < con_0 ray_data run scoreboard players set temp_3 ray_data 1
execute if score temp_3 ray_data > con_0 ray_data run scoreboard players operation in_0 ray_data *= con_-1 ray_data
# sine y
function raycast:math/sine
scoreboard players operation temp_siny ray_data = out_0 ray_data
# cosine y
function raycast:math/cosine
scoreboard players operation temp_cosy ray_data = out_0 ray_data

execute as @e[tag=ray_start,limit=1] at @s run function raycast:utils/manage_ray

tag @e[tag=ray_start,limit=1] remove ray_start