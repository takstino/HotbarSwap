# Summon armor stands above each player
execute as @a[tag=swap_playerA] at @s run summon armor_stand ~ ~100 ~ {Tags:["shulker_playerA"],Invisible:1b,NoGravity:1b,Marker:1b}
execute as @a[tag=swap_playerB] at @s run summon armor_stand ~ ~100 ~ {Tags:["shulker_playerB"],Invisible:1b,NoGravity:1b,Marker:1b}
say armor stands placed
# Place shulker boxes at armor stand positions
execute at @e[tag=shulker_playerA,limit=1] run setblock ~ ~ ~ minecraft:shulker_box
execute at @e[tag=shulker_playerB,limit=1] run setblock ~ ~ ~ minecraft:shulker_box
say shulker boxes places
# Wait a tick to ensure blocks are placed before loot (optional but safer)
schedule function hotbarswap_test_plaplb:absave_hotbars 1t
schedule function hotbarswap_test_plaplb:abclear_hotbar 1t
schedule function hotbarswap_test_plaplb:abload_hotbars 1t
