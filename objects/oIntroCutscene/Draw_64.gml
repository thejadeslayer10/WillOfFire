var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// Draw Black Background
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0, 0, _gui_w, _gui_h, false);

// Text Alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var _fnt = asset_get_index("fnt_pixel");
if (_fnt != -1) draw_set_font(_fnt);

// Draw "I'm so cold..."
draw_set_color(c_white);
draw_text(_gui_w / 2, _gui_h / 2, text_visible);

if (state == "finished") {
    draw_text(_gui_w / 2, _gui_h / 2 + 40, "Press any key to wake up");
}

// Draw White Fade
if (state == "fading_out") {
    draw_set_alpha(fade_white);
    draw_set_color(c_white);
    draw_rectangle(0, 0, _gui_w, _gui_h, false);
}
draw_set_alpha(1);