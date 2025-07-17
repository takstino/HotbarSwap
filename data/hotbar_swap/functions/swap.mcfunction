# === Step 0: Place shulker boxes ===
setblock 0 300 0 minecraft:shulker_box
setblock 1 300 0 minecraft:shulker_box

# === Step 1: Clear both shulker boxes ===
data modify block 0 300 0 Items set value []
data modify block 1 300 0 Items set value []

# === Step 2: Save both players' hotbars to the shulker boxes ===

# -- takstijn to shulkerA --
data modify block 0 300 0 Items append from entity saithsfuff Inventory[{Slot:0b}]
data modify block 0 300 0 Items append from entity saithsfuff Inventory[{Slot:1b}]
data modify block 0 300 0 Items append from entity saithsfuff Inventory[{Slot:2b}]
data modify block 0 300 0 Items append from entity saithsfuff Inventory[{Slot:3b}]
data modify block 0 300 0 Items append from entity saithsfuff Inventory[{Slot:4b}]
data modify block 0 300 0 Items append from entity saithsfuff Inventory[{Slot:5b}]
data modify block 0 300 0 Items append from entity saithsfuff Inventory[{Slot:6b}]
data modify block 0 300 0 Items append from entity saithsfuff Inventory[{Slot:7b}]
data modify block 0 300 0 Items append from entity saithsfuff Inventory[{Slot:8b}]

# -- JacobStreams_ to shulkerB --
data modify block 1 300 0 Items append from entity JacobStreams_ Inventory[{Slot:0b}]
data modify block 1 300 0 Items append from entity JacobStreams_ Inventory[{Slot:1b}]
data modify block 1 300 0 Items append from entity JacobStreams_ Inventory[{Slot:2b}]
data modify block 1 300 0 Items append from entity JacobStreams_ Inventory[{Slot:3b}]
data modify block 1 300 0 Items append from entity JacobStreams_ Inventory[{Slot:4b}]
data modify block 1 300 0 Items append from entity JacobStreams_ Inventory[{Slot:5b}]
data modify block 1 300 0 Items append from entity JacobStreams_ Inventory[{Slot:6b}]
data modify block 1 300 0 Items append from entity JacobStreams_ Inventory[{Slot:7b}]
data modify block 1 300 0 Items append from entity JacobStreams_ Inventory[{Slot:8b}]

# === Step 3: Clear hotbars ===
item replace entity saithsfuff hotbar.0 with air
item replace entity saithsfuff hotbar.1 with air
item replace entity saithsfuff hotbar.2 with air
item replace entity saithsfuff hotbar.3 with air
item replace entity saithsfuff hotbar.4 with air
item replace entity saithsfuff hotbar.5 with air
item replace entity saithsfuff hotbar.6 with air
item replace entity saithsfuff hotbar.7 with air
item replace entity saithsfuff hotbar.8 with air
item replace entity JacobStreams_ hotbar.0 with air
item replace entity JacobStreams_ hotbar.1 with air
item replace entity JacobStreams_ hotbar.2 with air
item replace entity JacobStreams_ hotbar.3 with air
item replace entity JacobStreams_ hotbar.4 with air
item replace entity JacobStreams_ hotbar.5 with air
item replace entity JacobStreams_ hotbar.6 with air
item replace entity JacobStreams_ hotbar.7 with air
item replace entity JacobStreams_ hotbar.8 with air

# === Step 4: Swap the hotbars ===

# Give JacobStreams_ the hotbar from takstijn
loot replace entity JacobStreams_ hotbar.0 1 mine 0 300 0


# Give takstijn the hotbar from JacobStreams_
loot replace entity saithsfuff hotbar.0 1 mine 1 300 0

# === Step 5: Clear the shulker boxes (optional) ===
data modify block 0 300 0 Items set value []
data modify block 1 300 0 Items set value []
