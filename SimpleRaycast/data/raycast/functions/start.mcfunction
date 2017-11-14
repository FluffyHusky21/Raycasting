setblock ~ ~ ~ air replace
gamerule commandBlockOutput false
gamerule maxCommandChainLength 1000000

scoreboard objectives add mech_data dummy
scoreboard objectives add mech_x dummy
scoreboard objectives add mech_y dummy
scoreboard objectives add mech_z dummy

scoreboard objectives add mech_usestick stat.useItem.minecraft.carrot_on_a_stick

#scoreboard  values setup
scoreboard players set con_-1 mech_data -1
scoreboard players set con_0 mech_data 0
scoreboard players set con_1 mech_data 1
scoreboard players set con_2 mech_data 2
scoreboard players set con_3 mech_data 3
scoreboard players set con_4 mech_data 4
scoreboard players set con_1000 mech_data 1000
scoreboard players set con_4000 mech_data 4000

scoreboard players set con_900 mech_data 900
scoreboard players set con_1800 mech_data 1800
scoreboard players set con_2700 mech_data 2700
scoreboard players set con_3600 mech_data 3600
scoreboard players set con_10000 mech_data 10000

function raycast:config

#Game Loop
setblock ~ ~ ~ repeating_command_block{auto:1b,Command:"function raycast:main"}