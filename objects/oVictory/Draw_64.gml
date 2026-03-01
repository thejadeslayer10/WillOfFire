var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// 1. Draw the Black Fade Overlay
draw_set_alpha(fade_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, _gui_w, _gui_h, false);

// 2. Draw the Victory Sprite
if (show_image) {
    draw_set_alpha(image_alpha);
    
    // Draw the sprite in the dead center
    // NOTE: Ensure your sprite origin is set to "Middle Centre"!
    draw_sprite(sVictoryArt, 0, _gui_w / 2, _gui_h / 2);
    
    // 3. Draw Victory Text
    var _fnt = asset_get_index("fnt_pixel"); // Use the safe search for your font
    if (_fnt != -1) draw_set_font(_fnt);
    
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_text(_gui_w / 2, _gui_h - 20, "A Game By Sanjay Riyanth.");
}

// ALWAYS reset alpha to 1 at the end of a Draw event
draw_set_alpha(1);