# Summon armor stands above each player
execute as takstijn at @s run summon minecraft:armor_stand ~ ~100 ~ {Tags:["shulker_takstijn"],Invisible:1b,NoGravity:1b,Marker:1b}
execute as takstijn1 at @s run summon minecraft:armor_stand ~ ~100 ~ {Tags:["shulker_jacob"],Invisible:1b,NoGravity:1b,Marker:1b}
say armor stands placed
# Place shulker boxes at armor stand positions
execute at @e[tag=shulker_takstijn,limit=1] run setblock ~ ~ ~ minecraft:shulker_box
execute at @e[tag=shulker_jacob,limit=1] run setblock ~ ~ ~ minecraft:shulker_box
say shulker boxes places
# Wait a tick to ensure blocks are placed before loot (optional but safer)
schedule function hotbar_testing:save_hotbars 1t
schedule function hotbar_testing:clear_hotbar 1t
schedule function hotbar_testing:load_hotbars 1t
