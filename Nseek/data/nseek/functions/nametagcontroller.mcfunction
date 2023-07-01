# This function is suppposed to be run every time with the start game function to load nametag settings

# Changes nametag visibility to everyone (value:0)
execute if score @s nseekNickvisibilty matches 0 run team modify seekers nametagVisibility always
execute if score @s nseekNickvisibilty matches 0 run team modify hiders nametagVisibility always

# Changes nametag visibility to nobody (value:1)
execute if score @s nseekNickvisibilty matches 1 run team modify seekers nametagVisibility never
execute if score @s nseekNickvisibilty matches 1 run team modify hiders nametagVisibility never

# Changes nametag visibility to only between hiders (value:2)
execute if score @s nseekNickvisibilty matches 2 run team modify seekers nametagVisibility hideForOtherTeams
execute if score @s nseekNickvisibilty matches 2 run team modify hiders nametagVisibility hideForOtherTeams