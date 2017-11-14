# in_0: base value, in degrees, to 1 decimal place expressed as an integer
# out_0: result, sine to 4 decimal places (stored as integer)

scoreboard players set temp_1 mech_data 0

execute if score in_0 mech_data > con_2700 mech_data run scoreboard players set temp_1 mech_data 4
execute if score in_0 mech_data > con_2700 mech_data run scoreboard players set temp_0 mech_data 3600
execute if score in_0 mech_data > con_2700 mech_data run scoreboard players operation temp_0 mech_data -= in_0 mech_data
execute if score in_0 mech_data > con_2700 mech_data run scoreboard players operation in_0 mech_data = temp_0 mech_data

execute if score in_0 mech_data > con_1800 mech_data run scoreboard players set temp_1 mech_data 3
execute if score in_0 mech_data > con_1800 mech_data run scoreboard players operation in_0 mech_data -= con_1800 mech_data

execute if score in_0 mech_data > con_900 mech_data run scoreboard players set temp_1 mech_data 2
execute if score in_0 mech_data > con_900 mech_data run scoreboard players set temp_0 mech_data 1800
execute if score in_0 mech_data > con_900 mech_data run scoreboard players operation temp_0 mech_data -= in_0 mech_data
execute if score in_0 mech_data > con_900 mech_data run scoreboard players operation in_0 mech_data = temp_0 mech_data

summon area_effect_cloud ~ ~ ~ {Tags:["mech_sine"],Particle:mobSpell,Duration:0}
scoreboard players operation @e[tag=mech_sine] mech_data = in_0 mech_data
execute as @e[tag=mech_sine] run function raycast:math/sine_lookup/sine_start
kill @e[tag=mech_sine]

execute if score temp_1 mech_data = con_3 mech_data run scoreboard players operation out_0 mech_data *= con_-1 mech_data
execute if score temp_1 mech_data = con_4 mech_data run scoreboard players operation out_0 mech_data *= con_-1 mech_data