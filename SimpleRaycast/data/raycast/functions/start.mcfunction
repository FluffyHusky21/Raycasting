gamerule commandBlockOutput false

scoreboard objectives add ray_timer dummy
scoreboard objectives add ray_data dummy

scoreboard players set con_-1 ray_data -1
scoreboard players set con_0 ray_data 0
scoreboard players set con_4 ray_data 4
scoreboard players set con_90 ray_data 90
scoreboard players set con_180 ray_data 180
scoreboard players set con_360 ray_data 360
scoreboard players set con_1000 ray_data 1000

setblock ~ ~ ~ repeating_command_block{Command:"function raycast:main",auto:1b}