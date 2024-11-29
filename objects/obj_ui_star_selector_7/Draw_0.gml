/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_self();
var corner_x = x + sprite_width / 2; // Adjust for the icon's width
var corner_y = y - sprite_height / 2; // Adjust for the icon's height

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(corner_x + 10, corner_y, string(obj_map_3.typeC_count)); 

if (is_hovered) {
    var sprite_to_draw = hoverC;
    draw_sprite(sprite_to_draw, 0, x + sprite_width / 2-5, y ); // Adjust position
}