# in_0: base value, in degrees
# out_0: result
#calculates cosine to 3 decimal places (stored as integer)
scoreboard players set temp_trig ray_data 0
execute if score in_0 ray_data > con_180 ray_data run scoreboard players set temp_trig ray_data 1
execute if score temp_trig ray_data > con_0 ray_data run scoreboard players operation temp_0 ray_data = in_0 ray_data
execute if score temp_trig ray_data > con_0 ray_data run scoreboard players set in_0 ray_data 360
execute if score temp_trig ray_data > con_0 ray_data run scoreboard players operation in_0 ray_data -= temp_0 ray_data

scoreboard players operation temp_0 ray_data = in_0 ray_data
scoreboard players operation temp_0 ray_data *= in_0 ray_data

scoreboard players operation temp_1 ray_data = temp_0 ray_data
scoreboard players operation temp_1 ray_data *= con_4 ray_data

scoreboard players set out_0 ray_data 32400
scoreboard players operation out_0 ray_data -= temp_1 ray_data
scoreboard players operation out_0 ray_data *= con_1000 ray_data

scoreboard players set temp_1 ray_data 32400
scoreboard players operation temp_1 ray_data += temp_0 ray_data
scoreboard players operation out_0 ray_data /= temp_1 ray_data

execute if score temp_trig ray_data > con_0 ray_data run scoreboard players operation out_0 ray_data *= con_-1 ray_data