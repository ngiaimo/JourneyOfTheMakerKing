/// @description Draw number of lives
draw_self();
draw_set_font(f_ui_font);
draw_set_valign(fa_middle);
draw_text(x+x_offset, y, "x" + string(extra_lives));