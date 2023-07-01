# Sets gamemode to spectator for people who get found and their respective team
execute as @a if score @s nseekGamerunning matches 1 if score @s nseekDeathcount matches 1 run gamemode spectator @s
execute as @a if score @s nseekGamerunning matches 1 if score @s nseekDeathcount matches 1 run team join spectator @s

# Clears the inventory of players so they cant get stuff
execute as @a if score @s nseekGamerunning matches 1 run clear @a