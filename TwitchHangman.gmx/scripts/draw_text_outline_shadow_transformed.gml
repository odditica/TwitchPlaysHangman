///draw_text_shadow_transformed(x, y, string, xscale, yscale, angle, alpha, offset, text colour, outline colour)
var xx = argument0;
var yy = argument1;
var str = argument2;
var xscale = argument3;
var yscale = argument4;
var angle = argument5;
var alp = argument6;
var offset = argument7; 

draw_set_colour(argument9);
draw_set_alpha(alp / 3);
draw_text_transformed(xx + offset, yy, str, xscale, yscale, angle);

draw_set_alpha(alp);
draw_set_colour(argument9);
draw_text_transformed(xx - 3, yy, str, xscale, yscale, angle);
draw_text_transformed(xx + 3, yy, str, xscale, yscale, angle);
draw_text_transformed(xx, yy + 3, str, xscale, yscale, angle);
draw_text_transformed(xx, yy - 3, str, xscale, yscale, angle);
draw_set_colour(argument8);
draw_text_transformed(xx, yy, str, xscale, yscale, angle);
draw_set_alpha(1); 

