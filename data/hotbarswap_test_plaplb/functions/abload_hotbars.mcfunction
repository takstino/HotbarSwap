
# Load hotbar slots 0–8 for PlayerA
execute at @e[tag=shulker_playerA,limit=1] run loot replace entity @e[tag=swap_playerB] hotbar.0 1 mine ~ ~ ~

# Load hotbar slots 0–8 for PlayerB
execute at @e[tag=shulker_playerB,limit=1] run loot replace entity @e[tag=swap_playerA] hotbar.0 1 mine ~ ~ ~

# Cleanup: remove shulker boxes
execute at @e[tag=shulker_playerA,limit=1] run setblock ~ ~ ~ air
execute at @e[tag=shulker_playerB,limit=1] run setblock ~ ~ ~ air

# Cleanup: remove armor stands
kill @e[tag=shulker_playerA]
kill @e[tag=shulker_playerB]
