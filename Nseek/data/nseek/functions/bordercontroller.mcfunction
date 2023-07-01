# This function is suppposed to be run every time with the start game function to start correct border schedules

# Randomises border centre if needed, also sets spawnpoint in the centre for the seeker
execute if score @s nseekRandomisebordercentre matches 1 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["random_pillar"]}
execute if score @s nseekRandomisebordercentre matches 1 run spreadplayers ~ ~ 0 150 false @e[type=armor_stand,tag=random_pillar]
execute if score @s nseekRandomisebordercentre matches 1 run execute at @e[type=armor_stand,tag=random_pillar] run worldborder center ~ ~
execute if score @s nseekRandomisebordercentre matches 1 run execute at @e[type=armor_stand,tag=random_pillar] run setworldspawn ~ ~100 ~
execute if score @s nseekRandomisebordercentre matches 1 run execute at @e[type=armor_stand,tag=random_pillar] run spreadplayers ~ ~ 0 50 false @a[team=hiders]
execute if score @s nseekRandomisebordercentre matches 1 run kill @e[type=armor_stand,tag=random_pillar]

# Set first border for specified size
execute if score @s nseekBordersize matches 0 run worldborder set 100
execute if score @s nseekBordersize matches 1 run worldborder set 250
execute if score @s nseekBordersize matches 2 run worldborder set 400
execute if score @s nseekBordersize matches 3 run worldborder set 600
execute if score @s nseekBordersize matches 4 run worldborder set 1000

# Schedules for 100 border size
execute if score @s nseekBordersize matches 0 run schedule function border:50 120s replace
execute if score @s nseekBordersize matches 0 run schedule function border:1 270s replace

# Schedules for 250 border size
execute if score @s nseekBordersize matches 1 run schedule function border:100 120s replace
execute if score @s nseekBordersize matches 1 run schedule function border:50 270s replace
execute if score @s nseekBordersize matches 1 run schedule function border:1 420s replace

# Schedules for 400 border size
execute if score @s nseekBordersize matches 2 run schedule function border:250 120s replace
execute if score @s nseekBordersize matches 2 run schedule function border:100 300s replace
execute if score @s nseekBordersize matches 2 run schedule function border:50 450s replace
execute if score @s nseekBordersize matches 2 run schedule function border:1 540s replace

# Schedules for 600 border size
execute if score @s nseekBordersize matches 3 run schedule function border:400 120s replace
execute if score @s nseekBordersize matches 3 run schedule function border:250 300s replace
execute if score @s nseekBordersize matches 3 run schedule function border:100 480s replace
execute if score @s nseekBordersize matches 3 run schedule function border:50 630s replace
execute if score @s nseekBordersize matches 3 run schedule function border:1 780s replace

# Schedules for 1000 border size
execute if score @s nseekBordersize matches 4 run schedule function border:600 120s replace
execute if score @s nseekBordersize matches 4 run schedule function border:400 360s replace
execute if score @s nseekBordersize matches 4 run schedule function border:250 540s replace
execute if score @s nseekBordersize matches 4 run schedule function border:100 720s replace
execute if score @s nseekBordersize matches 4 run schedule function border:50 870s replace
execute if score @s nseekBordersize matches 4 run schedule function border:1 1020s replace