# 🎨 Sprite Sheet Viewer

A lightweight HTML tool for previewing and testing sprite sheets with JSON atlases.  
This tool works entirely in your browser (no install required).
 
[Sprite Viewer🔗](https://radicallabsapp.github.io/development/Resources/SpriteViewer/viewer.html)

---

## 📂 Files
- `viewer.html` → The sprite sheet viewer (open in your browser).
- `README.md` → This usage guide.

---

## 🚀 Usage

1. Open **`viewer.html`** in any modern browser (Chrome, Firefox, Edge).  
2. Drag and drop your **PNG sprite sheet** and its **JSON atlas** into the drop area.  
   - Or use the **file picker** to load them manually.
3. Select an animation from the dropdown.  
4. Use the controls to play, pause, step frames, adjust scale, and speed.

---

## 🎛 Features
- 🔄 **Animation playback** (Play / Pause / Step through frames)  
- 🔍 **Upscale preview** (1x–10x)  
- ⚡ **Speed adjustment** (0.1x – 3x)  
- ⏱ **Custom per-frame timing** (override durations in JSON)  
- 📊 **Frame counter** (see current frame index)  
- 🌙 **Dark mode** toggle  
- 🖱 **Frame scrubbing** (drag mouse across canvas to scrub)  
- 🎲 **Randomize animation** button  
- 🖼 **GIF export (BROKEN)**  
  - Export the **current animation** or **all animations**  
  - Choose scale before downloading  

---

## ✅ Tips
- Make sure the `.json` file includes **sequences** with frame data (`x, y, w, h, duration_ms`).  
- Keep the **PNG** and **JSON** files named clearly so you can drag them together.  
- Exported GIFs will download directly in your browser.  

---

## 📌 Example Workflow
1. Export your sprite sheet + JSON from your game engine or tool.  
2. Open `viewer.html`.  
3. Drop both files into the viewer.  
4. Verify animations, tweak playback speed, and export a GIF preview if needed.  

---

💡 This tool is especially handy for **reviewing assets** before adding them into your project.  
