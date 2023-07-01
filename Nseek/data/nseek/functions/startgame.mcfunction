# Function that starts the game
function nseek:nametagcontroller
scoreboard players set @a nseekGamerunning 1
scoreboard players set @a nseekDeathcount 0

team join hiders @a
team join seekers @r
function nseek:bordercontroller
kill @a[team=seekers]

schedule function nseek:seekereffects 2t replace
schedule function nseek:seekermsg 60s replace

execute if score @s nseekBordersize matches 0 run schedule function nseek:endgame 360s replace
execute if score @s nseekBordersize matches 1 run schedule function nseek:endgame 510s replace
execute if score @s nseekBordersize matches 2 run schedule function nseek:endgame 630s replace
execute if score @s nseekBordersize matches 3 run schedule function nseek:endgame 870s replace
execute if score @s nseekBordersize matches 4 run schedule function nseek:endgame 1110s replace