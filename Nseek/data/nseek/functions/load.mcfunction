# Sets the gamerules for the game
difficulty peaceful
gamerule disableRaids true
gamerule doImmediateRespawn true
gamerule fallDamage false
gamerule fireDamage false
gamerule doWeatherCycle false
gamerule doMobSpawning true
gamerule drowningDamage true
gamerule globalSoundEvents true
worldborder damage buffer 0

# Initializes all scoreboards
scoreboard objectives add nseekGamerunning dummy
scoreboard objectives add nseekDeathcount deathCount
scoreboard objectives add nseekRandomisebordercentre dummy
scoreboard objectives add nseekNickvisibilty dummy
scoreboard objectives add nseekBordersize dummy


# Sets default values for scoreboards
scoreboard players set @a nseekGamerunning 0
scoreboard players set @a nseekDeathcount 0
scoreboard players set @a nseekRandomisebordercentre 1
scoreboard players set @a nseekNickvisibilty 2
scoreboard players set @a nseekBordersize 2

# Creates and sets correct settings for teams
team add seekers "Seekers"
team add hiders "Hiders"
team add spectators "Spectators"
team modify seekers color red
team modify hiders color aqua
team modify spectators color gray
team modify seekers nametagVisibility hideForOtherTeams
team modify hiders nametagVisibility hideForOtherTeams
team modify spectators nametagVisibility always
team join spectators @a

# Load/Reload welcome message :)
tellraw @a {"text":"Nseek loaded!","color":"light_purple","hoverEvent":{"action":"show_text","contents":["Currently running the DEV build"]}}