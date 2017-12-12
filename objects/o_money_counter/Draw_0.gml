/// @description Draw number of coins
draw_self();
draw_set_font(f_ui_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
//draw_text(x+x_offset, y-y_offset, "x" + string(coins));
draw_text(x+x_offset, y, "x" + string(coins));
