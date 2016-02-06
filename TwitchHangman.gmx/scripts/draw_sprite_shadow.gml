///draw_sprite_outline_shadow(x, y, spr, sub, xscale, yscale, angle, alpha, offset, image colour, shadow colour)
var xx = argument0;
var yy = argument1;
var spr = argument2;
var sub = argument3;
var xscale = argument4;
var yscale = argument5;
var angle = argument6;
var alp = argument7;
var offset = argument8; 
var blend = argument9;
var outline = argument10;

draw_sprite_ext(spr, sub, xx + offset, yy, xscale, yscale, angle, outline, alp / 3);
draw_sprite_ext(spr, sub, xx, yy, xscale, yscale, angle, blend, alp);


