summon small_fireball ~ ~-0.5 ~ {direction:[0.0,0.0,0.0],power:[0.0,0.0,0.0],Tags:["ray_dynamic","ray_start"],NoGravity:1b}

execute store result score in_0 ray_data run data get entity @s Rotation[0]
scoreboard players operation in_0 ray_data += con_90 ray_data
# sine x
function raycast:math/sine
scoreboard players operation temp_sinx ray_data = out_0 ray_data
# cosine x
function raycast:math/cosine
scoreboard players operation temp_cosx ray_data = out_0 ray_data

# y rot setup
execute store result score in_0 ray_data run data get entity @s Rotation[1]
scoreboard players set temp_2 ray_data 0
execute if score in_0 ray_data < con_0 ray_data run scoreboard players set temp_2 ray_data 1
execute if score temp_2 ray_data > con_0 ray_data run scoreboard players operation in_0 ray_data *= con_-1 ray_data
# sine y
function raycast:math/sine
scoreboard players operation temp_siny ray_data = out_0 ray_data
# cosine y
function raycast:math/cosine
scoreboard players operation temp_cosy ray_data = out_0 ray_data

scoreboard players operation temp_0 ray_data = temp_cosx ray_data
scoreboard players operation temp_0 ray_data *= temp_cosy ray_data
scoreboard players operation temp_0 ray_data /= con_1000 ray_data
execute store result entity @e[tag=ray_start,limit=1] power[0] double 0.0001 run scoreboard players get temp_0 ray_data

scoreboard players operation temp_0 ray_data = temp_sinx ray_data
scoreboard players operation temp_0 ray_data *= temp_cosy ray_data
scoreboard players operation temp_0 ray_data /= con_1000 ray_data
execute store result entity @e[tag=ray_start,limit=1] power[2] double 0.0001 run scoreboard players get temp_0 ray_data

scoreboard players operation temp_0 ray_data = temp_siny ray_data
execute if score temp_2 ray_data > con_0 ray_data run scoreboard players operation temp_0 ray_data *= con_-1 ray_data
execute store result entity @e[tag=ray_start,limit=1] power[1] double -0.0001 run scoreboard players get temp_0 ray_data

tag @e[tag=ray_start,limit=1] remove ray_start