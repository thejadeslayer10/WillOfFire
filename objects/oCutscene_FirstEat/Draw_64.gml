var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// 1. Draw solid black background
draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(0, 0, _gui_w, _gui_h, false);

// 2. Setup Font and Centering
var _fnt = asset_get_index("fnt_pixel");
if (_fnt != -1) draw_set_font(_fnt);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// 3. Draw the typing message in the middle
draw_set_color(c_white);
draw_text(_gui_w / 2, _gui_h / 2, text_visible);

// 4. Draw "Continue" prompt only after text is finished typing
if (char_index >= string_length(text_full)) 
{
    draw_set_color(c_gray);
    draw_text(_gui_w / 2, (_gui_h / 2) + 40, "Press any key to continue");
}

// 5. Reset drawing settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);