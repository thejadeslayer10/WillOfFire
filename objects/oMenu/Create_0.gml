// 1. Positioning (Centered on the GUI layer)
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

// 2. Font Setup
// We store the font ID here so the game doesn't have to search for it every frame
menu_font = asset_get_index("fnt_pixel");

// 3. Animation & Visuals
title_text = "ANT SURVIVAL";
prompt_text = "PRESS ANY BUTTON TO START";
title_y_offset = 0; // Use this if you want the title to bob up and down
menu_alpha = 0;     // Start invisible for a fade-in effect

// 4. Input Safety Buffer
// This prevents the game from starting instantly if the player was 
// clicking while the game was loading.
can_start = false;
alarm[0] = 30; // Wait 0.5 seconds (at 60fps) before allowing input