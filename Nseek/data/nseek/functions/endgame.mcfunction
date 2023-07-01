# Ends the game

worldborder set 10000000
scoreboard players set @a nseekGamerunning 0
scoreboard players set @a nseekDeathcount 0
function nseek:schclearer
effect clear @a
gamemode adventure @a