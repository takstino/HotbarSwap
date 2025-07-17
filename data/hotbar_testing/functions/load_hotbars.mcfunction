say loading...
# Load hotbar slots 0–8 for Jacob
execute at @e[tag=shulker_takstijn,limit=1] run loot replace entity takstijn1 hotbar.0 1 mine ~ ~ ~

# Load hotbar slots 0–8 for takstijn
execute at @e[tag=shulker_jacob,limit=1] run loot replace entity takstijn hotbar.0 1 mine ~ ~ ~

# Cleanup: remove shulker boxes
execute at @e[tag=shulker_takstijn,limit=1] run setblock ~ ~ ~ air
execute at @e[tag=shulker_jacob,limit=1] run setblock ~ ~ ~ air

# Cleanup: remove armor stands
kill @e[tag=shulker_takstijn]
kill @e[tag=shulker_jacob]
