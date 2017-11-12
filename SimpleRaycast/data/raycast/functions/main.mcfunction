scoreboard players add @e[tag=mech_ray] ray_timer 1
kill @e[tag=mech_ray,scores={ray_timer=2..}]

#This timer score affects how far a dynamic ray travels
scoreboard players add @e[tag=mech_dynamic_ray] ray_timer 1
kill @e[tag=mech_dynamic_ray,scores={ray_timer=80..}]
