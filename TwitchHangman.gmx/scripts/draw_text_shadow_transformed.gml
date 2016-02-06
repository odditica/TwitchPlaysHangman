///draw_text_shadow_transformed(x, y, string, xscale, yscale, angle, alpha, offset)

var xx = argument0;
var yy = argument1;
var str = argument2;
var xscale = argument3;
var yscale = argument4;
var angle = argument5;
var alp = argument6;
var offset = argument7; 

//shader_set(shaderScribbly);
//shader_set_uniform_f(shader_get_uniform(shaderScribbly, "time"), objControl.time);
draw_set_alpha(alp / 3);
draw_text_transformed(xx + offset, yy, str, xscale, yscale, angle);
draw_set_alpha(alp);
draw_text_transformed(xx, yy, str, xscale, yscale, angle);
draw_set_alpha(1); 
//shader_reset();
