// 1. Get current GUI size
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// 2. Draw the dark overlay
draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, _gui_w, _gui_h, false);
draw_set_alpha(1);

// 3. BULLETPROOF FONT SETTING
// We look for the asset as a string to prevent the "Variable Not Set" crash
var _font_id = asset_get_index("fnt_pixel");

if (_font_id != -1) {
    draw_set_font(_font_id);
} else {
    draw_set_font(-1); // Use default if fnt_pixel is missing
}

// 4. Center and Draw
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_red);
draw_text(_gui_w / 2, _gui_h / 2 - 15, "THE WILL OF FIRE HAS GONE OUT");

draw_set_color(c_white);
draw_text(_gui_w / 2, _gui_h / 2 + 15, "PRESS 'R' TO REKINDLE\nPRESS 'ESC' TO GIVE UP");

// 5. Reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);