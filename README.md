# Skin-Changer Script for SA-MP 🚗

## 📜 Overview
Welcome to the **Skin-Changer** script! This Lua script for **San Andreas Multiplayer (SA-MP)** allows players to change their skin with ease. You can set your favorite skin, delete it, and more!

This script is compatible with **MoonLoader** and is simple to use. The **Skin-Changer** helps customize your gameplay experience by giving you control over your character's appearance.

---

## 🚀 Features
- **Set Favorite Skin**: Use the `/skin ID` command to change your skin to your favorite one.
- **Delete Favorite Skin**: Use the `/delskin` command to remove your saved skin and revert to your default skin (you'll need to relog).
- **Error Handling**: Prevents crashes by rejecting invalid or restricted skin IDs (e.g., Skin ID 74).
- **Persistent**: Your chosen skin is saved across sessions, so you don’t need to set it again after restarting the game.

---

## 🎮 Commands

### `/skin <ID>` 
Set your skin to a specific ID. This will persist even after you relog!  
Example: `/skin 20` changes your skin to the one with ID 20.  
**Note:** ID must be between **0 and 311**, but **74** is restricted (to avoid crashes).

### `/delskin` 
Deletes your saved skin and reverts to the default skin.  
**Important**: After running this command, you need to relog to see the change.

---

## 🖥️ Preview

Here's a **Streamable** overlay for displaying your Skin-Changer status in the stream. 🚀  
Click the button below to view it:

[WATCH HERE!](https://streamable.com/ycwrwl)

---

## 🧑‍💻 Installation

1. Download or clone this repository.
2. Put the `SkinChanger.lua` script in your **MoonLoader** scripts folder.
3. Run SA-MP and the script will automatically load.
4. Use `/skin <ID>` to change your skin or `/delskin` to delete your saved skin.

---

## 💬 Chat Messages

- When changing the skin, the script will inform you if it was successful:
  ```text
  [V+]: The skin <ID> has been set successfully!
