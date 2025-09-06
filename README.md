# 👚 Skin-Changer Script for SA-MP 👕

## 📜 Overview
One of the most popular mods in the GTA San Andreas community is the classic Skin Changer.  
Since I like to make things a bit more complex, I decided to create something a little different.  

This mod saves your chosen skin even after you exit the game, and also allows you to delete your selection if needed.  
It’s simple and straightforward to use:  
- `/skin [ID 0–316]` – set a skin  
- `/delskin` – remove the saved skin  

Bug fixes include: 
- Skin ID 74 is now skipped
- You can also select the CJ skin (ID 0)  

The project is final – there’s nothing else meaningful left to add.

---

## 🎮 Commands

### `/skin <ID>`  
Example: `/skin 20` changes your skin to the one with ID 20.  
**Note:** ID must be between **0 and 311**, but **74** is restricted (to avoid crashes).

### `/delskin` 
Deletes your saved skin and reverts to the default skin.  
**Important**: After running this command, you need to relog to see the change.

---

## 🖥️ Preview

Here's a **Streamlabs** overlay for displaying your Skin-Changer status in the stream. 🚀  
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
