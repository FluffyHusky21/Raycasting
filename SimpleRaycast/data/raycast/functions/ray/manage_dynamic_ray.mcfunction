scoreboard players operation in_0 mech_data = dynamic_speed mech_data
execute store result score temp_0 mech_data run data get entity @s Pos[0] 50000
execute store result score temp_1 mech_data run data get entity @s Pos[1] 50000
execute store result score temp_2 mech_data run data get entity @s Pos[2] 50000
scoreboard players remove @s mech_data 10
function raycast:ray/manage_dynamic_ray_2

execute unless score @s mech_data > con_0 mech_data run kill @s
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s offset ~ ~-1 ~ if entity @e[distance=..0.75,nbt={DeathTime:0s},tag=!ray_caster] run kill @s
