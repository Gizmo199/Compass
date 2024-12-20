var _yposition	= 15;
var _xposition	= 15;
var _separation = 16;
var _xnewline	= room_width * 0.5;
var _line		= "\n------------------------------------------------------------------------\n";
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_yellow);
draw_text_ext(_xposition, _yposition, title, _separation, _xnewline);
_yposition += string_height(title);

draw_set_color(c_white);
draw_text_ext(_xposition, _yposition,_line + text + _line + "\n" + info, _separation, _xnewline);
