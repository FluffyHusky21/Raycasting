execute if entity @s[scores={mech_data=000..099}] run function raycast:math/sine_lookup/look_000_099/lookup
execute if entity @s[scores={mech_data=100..199}] run function raycast:math/sine_lookup/look_100_199/lookup
execute if entity @s[scores={mech_data=200..299}] run function raycast:math/sine_lookup/look_200_299/lookup
execute if entity @s[scores={mech_data=300..399}] run function raycast:math/sine_lookup/look_300_399/lookup
execute if entity @s[scores={mech_data=400..499}] run function raycast:math/sine_lookup/look_400_499/lookup
execute if entity @s[scores={mech_data=500..599}] run function raycast:math/sine_lookup/look_500_599/lookup
execute if entity @s[scores={mech_data=600..699}] run function raycast:math/sine_lookup/look_600_699/lookup
execute if entity @s[scores={mech_data=700..799}] run function raycast:math/sine_lookup/look_700_799/lookup
execute if entity @s[scores={mech_data=800..899}] run function raycast:math/sine_lookup/look_800_899/lookup
execute if entity @s[scores={mech_data=900..}] run scoreboard players set out_0 mech_data 10000
